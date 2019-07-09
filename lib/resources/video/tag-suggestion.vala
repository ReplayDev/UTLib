/* utlib - Yet another wrapper to the YouTube Data API v3
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
     * A single tag suggestion with its relevance information.
     */
    public class TagSuggestion : Object {

        /**
         * The keyword tag suggested for the video.
         */
        public virtual string? tag { get; }

        /**
         * A set of video categories for which the tag is relevant.
         *
         * You can use this information to display appropiate tag suggestions based on the video category that the video
         * uploader associates with the video. By default, tag suggestions are relevant for all categories if there are
         * no restricts defined for the keyword.
         */
        public virtual Gee.ArrayList<string> category_restricts { get; }
    }
}
