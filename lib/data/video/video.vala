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

    /**
     * A {@link Utlib.Video} resource represents a YouTube video.
     */
    public class Video : Object {

        /**
         * Identifies the API resource's type. The value will be ``youtube\#video``.
         */
        public string? kind { get; }

        /**
         * The Etag of this resource.
         */
        public string? etag { get; }

        /**
         * The ID that YouTube uses to uniquely identify the video.
         */
        public string? id { get; }

        /**
         * The {@link Utlib.VideoSnippet} object contains basic details about the video, such as its title, description,
         * and catogory.
         */
        public VideoSnippet snippet { get; }

        /**
         * The {@link Utlib.ContentDetails} object contains information about the video content, including the length of
         * the video and an indication of whether captions are available for the video.
         */
        public ContentDetails content_details { get; }

        /**
         * The {@link Utlib.Status} object contains information about the video's uploading, processing, and privacy
         * statuses.
         */
        public Status status { get; }

        /**
         * The {@link Utlib.Statistics} object contains statistics about the video.
         */
        public Statistics statistics { get; }

        /**
         * The {@link Utlib.Player} object contains information that you would use to play the video in an embedded
         * player.
         */
        public Player player { get; }
    }
}
