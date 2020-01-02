/* Utlib - Yet another wrapper to the YouTube Data API v3
 * Copyright (C) 2019-2020 Nahuel Gomez Castro
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

namespace Utlib {

    public abstract class Request<T> : Object {

        protected PropertyService property_service;

        protected Request () {
            this.property_service = new PropertyService (this);
        }

        construct {
            this.install_properties ();
        }

        /**
         * OAuth 2.0 token for the current user.
         */
        public string access_token { get; set; }

        /**
         * Callback function.
         */
        public string callback { get; set; }

        /**
         * Selector specifying a subset of fields to include in the response.
         */
        public string fields { get; set; }

        /**
         * API key.
         */
        public string key { get; set; }

        /**
         * Returns response with indentations and line breaks.
         */
        public string pretty_print { get; set; }

        /**
         * Alternative to {@link Utlib.Request.user_ip}.
         */
        public string quota_user { get; set; }

        /**
         * IP address of the end user for whom the API call is being made.
         */
        public string user_ip { get; set; }

        public abstract async T execute_async (Cancellable? cancellable);

        protected virtual void install_properties () {
            this.property_service.install_property ("access-token", "access_token");
            this.property_service.install_property ("callback");
            this.property_service.install_property ("fields");
            this.property_service.install_property ("key");
            this.property_service.install_property ("pretty-print", "prettyPrint");
            this.property_service.install_property ("quota-user", "quotaUser");
            this.property_service.install_property ("user-ip", "userIp");
        }
    }
}
