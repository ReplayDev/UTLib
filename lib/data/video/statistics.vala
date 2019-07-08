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

    public class Statistics : Object {

        /**
         * The number of times the video has been viewed.
         */
        public ulong? view_count { get; }

        /**
         * The number of users who have indicated that they liked the video.
         */
        public ulong? like_count { get; }

        /**
         * The number of users who have indicated that they disliked the video.
         */
        public ulong? dislike_count { get; }

        /**
         * The number of comments for the video.
         */
        public ulong? comment_count { get; }
    }
}
