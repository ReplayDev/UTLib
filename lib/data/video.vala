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
     * A ``video`` resource represents a YouTube video.
     */
    public class Video : Object {

        /**
         * Identifies the API resource's type. The value will be ''``youtube#video``''.
         */
        public string kind { get; set; }

        /**
         * The Etag of this resource.
         */
        public string etag { get; set; }

        /**
         * The ID that YouTube uses to uniquely identify the video.
         */
        public string id { get; set; }

        /**
         * The ''``snippet``'' object contains basic details about the video, such as its title, description, and
         * catogory.
         */
        public VideoSnippet snippet { get; set; }
    }

    public class VideoSnippet : Object {

        /**
         * The date and time that the video was published.
         */
        public DateTime published_at { get; set; }

        /**
         * The ID that YouTube uses to uniquely identify the channel that the video was uploaded to.
         */
        public string channel_id { get; set; }

        /**
         * The video's title.
         */
        public string title { get; set; }

        /**
         * The video's description.
         */
        public string description { get; set; }

        /**
         * A map of thumbnails images associated with the video.
         */
        public Gee.HashMap<string, Thumbnail> thumbnails { get; set; }

        /**
         * Channel title for the channel that the video belongs to.
         */
        public string channel_title { get; set; }

        /**
         * A list of keyword tags associated with the video.
         */
        public Gee.ArrayList<string> tags { get; set; }

        /**
         * The YouTube video category associated with the video.
         */
        public string category_id { get; set; }

        /**
         * Indicates if the video is an upcoming/active live broadcast.
         */
        public string live_broadcast_content { get; set; }

        /**
         * The language of the text in the ''``video``'' resource's ''``snippet.title``'' and ''``snippet.description''``
         * properties.
         */
        public string default_language { get; set; }

        /**
         * The ''``snippet.localized``'' object contains either a localized title and description for the video or the
         * title in the default language for the video's metadata.
         */
        public VideoLocalization localized { get; set; }

        /**
         * The ''``default_audio_language``'' property specifies the language spoken in the video's default audio track.
         */
        public string default_audio_language { get; set; }
    }

    public class VideoLocalization : Object {

        /**
         * The localized video title.
         */
        public string title { get; set; }

        /**
         * The localized video description.
         */
        public string description { get; set; }
    }
}
