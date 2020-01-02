/* Utlib - Yet another wrapper to the YouTube Data API v3
 * Copyright (C) 2019 Nahuel Gomez Castro
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

using Soup;
using GJson;

namespace Utlib {

    public class VideoCategoriesListRequest : Request<ListResponse<VideoCategory>?> {

        private string _part;

        /**
         * Specifies the {@link Utlib.VideoCategory} resource properties that the
         * API response will include.
         */
        public string part {
            get {
                return this._part;
            }
        }

        /**
         * Specifies a comma-separated list of video category IDs for the resources
         * that you are retrieving.
         */
        public string id { get; set; }

        /**
         * Instructs the API to return the list of video categories available in
         * the specified country.
         */
        public string region_code { get; set; }

        /**
         * Specifies the language that should be used for text values in the API
         * response.
         */
        public string hl { get; set; }

        public VideoCategoriesListRequest (string part) {
            this.property_service = new PropertyService (this);
            this._part = part;
        }

        public override async ListResponse<VideoCategory>? execute_async (Cancellable? cancellable = null) {
            var properties = this.property_service.parse_properties ();
            return_val_if_fail (properties != null, null);

            var url = @"www.googleapis.com/youtube/v3/videoCategories?$properties";

            var session = new Session ();
            session.use_thread_context = true;

            try {
                var request = session.request (url);
                var stream = yield request.send_async (cancellable);

                var data = yield read_to_string_async (new DataInputStream (stream));

                var parsed_object = yield GJson.Object.parse_async (data);
                var response = deserialize_object (typeof (ListResponse),
                    parsed_object) as ListResponse;

                return response;
            } catch (Error e) {
                warning (e.message);
                return null;
            }
        }

        public override void install_properties () {
            base.install_properties ();

            this.property_service.install_property ("part");
            this.property_service.install_property ("id");
            this.property_service.install_property ("region-code", "regionCode");
            this.property_service.install_property ("hl");
        }
    }
}
