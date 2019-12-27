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

namespace Utlib {

    /**
     * A {@link Utlib.VideoCategory} resource identifies a category that has
     * been or could be associated with uploaded videos.
     */
    public class VideoCategory : Object {

        /**
         * Identifies the API resource's type. The value will be
         * ``youtube\#videoCategory``.
         */
        public virtual string kind { get; set; }

        /**
         * The Etag of this resource.
         */
        public virtual string etag { get; set; }

        /**
         * The ID that YouTube uses to uniquely identify the video category.
         */
        public virtual string id { get; set; }

        /**
         * The {@link Utlib.VideoCategorySnippet} object contains basic details
         * about the video category, including its title.
         */
        public virtual VideoCategorySnippet snippet { get; set; }
    }
}
