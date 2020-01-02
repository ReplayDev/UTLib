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

    public class ListResponse<T> : Object {

        /**
         * Identifies the API resource's type.
         */
        public string kind { get; set; }

        /**
         * The Etag of this resource.
         */
        public string etag { get; set; }

        /**
         * The token that can be used as the value of the ``page_token``
         * parameter to retrieve the next page in the result set.
         */
        public string next_page_token { get; set; }

        /**
         * The token that can be used as the value of the ``page_token``
         * parameter to retrieve the previous page in the result set.
         */
        public string prev_page_token { get; set; }

        /**
         * The {@link Utlib.PageInfo} object encapsulates paging information for
         * the result set.
         */
        public PageInfo page_info { get; set; }

        /**
         * A list of items that match the request.
         */
        public Gee.List<T> items { get; set; }
    }
}
