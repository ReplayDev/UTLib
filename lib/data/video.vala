/* utlib - Yet another wrapper to the YouTube Data API v3
 * Copyright (C) 2019 Nahuel Gomez Castro
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

namespace Utlib.Data {

    /**
     * A ``video`` resource represents a YouTube video.
     */
    public class Video : Object {

        /**
         * Identifies the API resource's type. The value will be ''``youtube#video``''.
         */
        public string kind { get; set; }

        /**
         * The Etag of this resource.
         */
        public string etag { get; set; }

        /**
         * The ID that YouTube uses to uniquely identify the video.
         */
        public string id { get; set; }
    }
}
