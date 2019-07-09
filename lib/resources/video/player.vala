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
     * Player to be used for a video playback.
     */
    public class Player : Object {

        /**
         * An ``<iframe>`` tag that embeds a player that plays the video.
         *
         *  * If the API request to retrieve the resource specifies a value for the {@link VideosResource.ListRequest.max_height} and/or {@link VideosResource.ListRequest.max_width} parameters, the size of the embedded player is scaled to satisfy the {@link VideosResource.ListRequest.max_height} and/or {@link VideosResource.ListRequest.max_width} requirements.
         *  * If the video's aspect ratio is unknown, the embedded player defaults to a 4:3 format.
         */
        public string? embed_html { get; }

        /**
         * The height of the embedded player returned in the {@link embed_html} property.
         *
         * This property is only returned if the request specified a value for the {@link VideosResource.ListRequest.max_height}
         * and/or {@link VideosResource.ListRequest.max_width} paramters and the video's aspect ratio is known.
         */
        public long? embed_height { get; }

        /**
         * The width of the embedded player returned in the {@link embed_html} property.
         *
         * This property is only returned if the request specified a value for the {@link VideosResource.ListRequest.max_height}
         * and/or {@link VideosResource.ListRequest.max_width} paramters and the video's aspect ratio is known.
         */
        public long? embed_width { get; }
    }
}
