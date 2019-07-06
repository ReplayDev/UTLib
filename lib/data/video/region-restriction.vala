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

namespace Utlib {

    public class RegionRestriction : Object {

        /**
         * A list of region codes that identify countries where the video is viewable.
         *
         * If this property is present and a country is not listed in its value, then the video is blocked from appearing
         * in that country. If this property is present and contains an empty list, the video is blocked in all countries.
         */
        public Gee.ArrayList<string> allowed { get; }

        /**
         * A list of region codes that identify countries where the video is blocked.
         *
         * If this property is present and a country is not listed in its value, then the video is viewable in that
         * country. If this property is present and contains an empty list, the video is viewable in all countries.
         */
        public Gee.ArrayList<string> blocked { get; }
    }
}
