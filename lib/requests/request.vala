/* UTLib - Yet another wrapper to the YouTube Data API v3.
 * Copyright (C) 2020 Nahuel Gomez Castro <nahual_gomca@outlook.com.ar>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

using Gee;
using Soup;
using GJson;

namespace Utlib {

    public abstract class Request<T> : GLib.Object {

        public Client client { get; construct; }
        protected Map<string, Parameter> request_parameters { get; set; }

        public string access_token { get; set; }
        public string callback { get; set; }
        public string fields { get; set; }
        public string key { get; set; }
        public string pretty_print { get; set; }
        public string quota_user { get; set; }
        public string user_ip { get; set; }

        protected abstract string url { get; }


        protected Request (Client client) {
            GLib.Object (
                client: client
            );
        }

        construct {
            this.client.bind_property ("api-key", this, "key",
                BindingFlags.DEFAULT | BindingFlags.SYNC_CREATE);
        }


        public virtual T execute () throws RequestError, ParserError, Error {
            var parameters = this.parse_parameters ();
            var uri = @"$(this.url)?$(parameters)";

            debug (@"The parsed url is: $uri");

            var session = this.client.session;
            var message = new Message ("GET", uri);

            var status_code = session.send_message (message);

            var parsed_object = GJson.Object.parse (
                (string) message.response_body.data
            );

            if (status_code == Status.OK) {
                return (T) deserialize_object (typeof (T), parsed_object);
            } else {
                throw new RequestError.SERVER_ERROR (
                    parsed_object.get_object_member ("error").get_string_member ("message")
                );
            }
        }

        protected virtual void init_parameters () {
            if (request_parameters == null) {
                debug ("request_parameters is null. Creating new instance.");
                request_parameters = new HashMap<string, Parameter> ();
            }

            this.request_parameters["access-token"] = new Parameter () {
                name = "access_token",
                is_required = false,
                default_value = ""
            };
            this.request_parameters["callback"] = new Parameter () {
                name = "callback",
                is_required = false,
                default_value = ""
            };
            this.request_parameters["fields"] = new Parameter () {
                name = "fields",
                is_required = false,
                default_value = ""
            };
            this.request_parameters["key"] = new Parameter () {
                name = "key",
                is_required = false,
                default_value = ""
            };
            this.request_parameters["pretty-print"] = new Parameter () {
                name = "prettyPrint",
                is_required = false,
                default_value = "true"
            };
            this.request_parameters["quota-user"] = new Parameter () {
                name = "quotaUser",
                is_required = false,
                default_value = ""
            };
            this.request_parameters["user-ip"] = new Parameter () {
                name = "userIp",
                is_required = false,
                default_value = ""
            };
        }

        protected string? parse_parameters () throws ParserError {
            var parsed_parameters = new ArrayList<string> ();

            foreach (var item in this.request_parameters.entries) {
                var parsed_parameter = this.parse_parameter (item.key, item.value);
                if (parsed_parameter == null) {
                    debug (@"$(item.value.name) not parsed");
                    continue;
                }

                parsed_parameters.add (parsed_parameter);
                debug (@"$parsed_parameter added");
            }

            return string.joinv ("&", parsed_parameters.to_array ());
        }

        private string? parse_parameter (string prop_name, Parameter param) throws ParserError {
            var klass = (ObjectClass) this.get_type ().class_ref ();
            var spec = klass.find_property (prop_name);

            if (spec == null) {
                throw new ParserError.PROPERTY_NOT_FOUND (
                    @"$(klass.get_name ()) has no $prop_name property"
                );
            }

            string param_value = "";

            switch (spec.value_type) {
                case Type.STRING:
                    debug (@"$prop_name is string");

                    Value? val = Value (spec.value_type);
                    this.get_property (prop_name, ref val);

                    param_value = val.get_string ();

                    if (param_value == null) {
                        debug (@"$prop_name's value is null");
                        param_value = "";
                    }

                    break;
                default:
                    return null;
            }

            if (param.is_required && param_value == "") {
                debug (@"$(param.name) is required and is not setted");

                if (param.default_value == "") {
                    throw new ParserError.REQUIRED_PARAM_NOT_SET (
                        @"$(param.name) is required but it is not setted and has no default value"
                    );
                } else {
                    param_value = param.default_value;
                }
            }

            return param_value == "" ? null : @"$(param.name)=$(param_value)";
        }
    }
}
