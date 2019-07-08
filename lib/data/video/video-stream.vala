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

    public class VideoStream : Object {

        /**
         * The encoded video content's width in pixels.
         *
         * You can calculate the video's encoding aspect ratio as {@link Utlib.VideoStream.width_pixels} /
         * {@link Utlib.VideoStream.height_pixels}.
         */
        public uint? width_pixels { get; }

        /**
         * The encoded video content's height in pixels.
         */
        public uint? height_pixels { get; }

        /**
         * The video stream's frame rate, in frames per second.
         */
        public double? frame_rate_fps { get; }

        /**
         * The video content's display aspect ratio, which specifies the aspect ratio in which the video should be
         * displayed.
         */
        public double? aspect_ratio { get; }

        /**
         * The video codec that the stream uses.
         */
        public string? codec { get; }

        /**
         * The video stream's bitrate, in bits per second.
         */
        public ulong? bitrate_bps { get; }

        /**
         * The amount that YouTube needs to rotate the original source content to properly display the video.
         *
         * Valid values for this property are:
         *
         *  * ``clockwise`` - The video needs to be rotated 90 degrees clockwise.
         *  * ``counterClockwise`` - The video needs to be rotated 90 degrees counter-clockwise.
         *  * ``none`` - The video does not need to be rotated.
         *  * ``other`` - The video needs to be rotated in some other, non-trivial way.
         *  * ``upsideDown`` - The video needs to be rotated upside down.
         */
        public string? rotation { get; }

        /**
         * A value that uniquely identifies a video vendor.
         *
         * Tipically, the value is a four-letter vendor code.
         */
        public string? vendor { get; }
    }
}
