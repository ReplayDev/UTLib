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

    public class AudioStream : Object {

        /**
         * The number of audio channels that the stream contains.
         */
        public uint? channel_count { get; }

        /**
         * The audio codec that the stream uses.
         */
        public string? codec { get; }

        /**
         * The audio stream's bitrate, in bits per second.
         */
        public ulong? bitrate_bps { get; }

        /**
         * A value that uniquely identifies a video vendor.
         *
         * Tipically, the value is a four-letter vendor code.
         */
        public string? vendor { get; }
    }
}
