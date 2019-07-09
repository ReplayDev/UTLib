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
     * Recording information associated with the video.
     */
    public class RecordingDetails : Object {

        /**
         * The date and time when the video was recorded.
         *
         * The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]] (``YYYY-MM-DDThh:mm:ss.sZ``) format.
         */
        public DateTime recording_date { get; }
    }
}
