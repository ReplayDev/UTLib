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

    public class ProcessingProgress : Object {

        /**
         * An estimate of the total number of parts that need to be processed for the video.
         *
         * The number may be updated with more precise estimates while YouTube processes the video.
         */
        public virtual ulong? parts_total { get; }

        /**
         * The number of parts of the video that YouTube has already processed.
         *
         * You can estimate the percentage of the video that YouTube has already processed by calculating:
         * ``100 * parts_processed / parts_total``
         *
         * Note that since the estimated number of parts could increase without a corresponding increase in the number
         * of parts that have already been processed, it is possible that the calculated progress could periodically
         * decrease while YouTube processes a video.
         */
        public virtual ulong? parts_processed { get; }

        /**
         * An estimate of the amount of time, in milliseconds, that YouTube needs to finish processing the video.
         */
        public virtual ulong? time_left_ms { get; }
    }
}
