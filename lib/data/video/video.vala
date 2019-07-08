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
        public virtual string? kind { get; }

        /**
         * The Etag of this resource.
         */
        public virtual string? etag { get; }

        /**
         * The ID that YouTube uses to uniquely identify the video.
         */
        public virtual string? id { get; }

        /**
         * The {@link Utlib.VideoSnippet} object contains basic details about the video, such as its title, description,
         * and catogory.
         */
        public virtual VideoSnippet snippet { get; }

        /**
         * The {@link Utlib.ContentDetails} object contains information about the video content, including the length of
         * the video and an indication of whether captions are available for the video.
         */
        public virtual ContentDetails content_details { get; }

        /**
         * The {@link Utlib.Status} object contains information about the video's uploading, processing, and privacy
         * statuses.
         */
        public virtual Status status { get; }

        /**
         * The {@link Utlib.Statistics} object contains statistics about the video.
         */
        public virtual Statistics statistics { get; }

        /**
         * The {@link Utlib.Player} object contains information that you would use to play the video in an embedded
         * player.
         */
        public virtual Player player { get; }

        /**
         * The {@link Utlib.TopicDetails} object encapsulates information about topics associated with the video.
         */
        public virtual TopicDetails topic_details { get; }

        /**
         * The {@link Utlib.RecordingDetails} object encapsulates information about the location, date and address where
         * the video was recorded.
         */
        public virtual RecordingDetails recording_details { get; }

        /**
         * The {@link Utlib.FileDetails} object encapsulates information about the video file that was uploaded to YouTube,
         * including the file's resolution, duration, audio and video codecs, stream bitrates, and more.
         *
         * This data can only be retrieved by the video owner.
         *
         * The {@link Utlib.FileDetails} object will only be returned if the {@link Utlib.ProcessingDetails.file_availability}
         * property has a value of ``available``.
         */
        public virtual FileDetails file_details { get; }

        /**
         * The {@link Utlib.ProcessingDetails} object encapsulates information about YouTube's progress in processing
         * the uploaded video file.
         *
         * The properties in the object identify the current processing status and an estimate of the time remaining
         * until YouTube finishes processing the video. This part also indicates whether different types of data or
         * content, such as file details or thumbnail images, are available for the video.
         *
         * The {@link Utlib.ProcessingDetails} object is designed to be polled so that the video uploaded can track the
         * progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the
         * video owner.
         */
        public virtual ProcessingDetails processing_details { get; }

        /**
         * The {@link Utlib.Suggestions} object encapsulates suggestions that identify opportunities to improve the
         * video quality or the metadata for the uploaded video.
         *
         * This data can only be retrieved by the video owner.
         *
         * The {@link Utlib.Suggestions} object will only be returned if the {@link Utlib.ProcessingDetails.tag_suggestions_availability}
         * property or the {@link Utlib.ProcessingDetails.editor_suggestions_availability} property has a value of ``available``.
         */
        public virtual Suggestions suggestions { get; }

        /**
         * The {@link Utlib.LiveStreamingDetails} object contains metadata about a live video broadcast.
         *
         * The object will only be present in a {@link Utlib.Video} resource if the video is an upcoming, live, or
         * completed live broadcast.
         */
        public virtual LiveStreamingDetails live_streaming_details { get; }

        /**
         * The {@link Utlib.Video.localizations} object contains translations of the video's metadata.
         */
        public virtual Gee.HashMap<string, VideoLocalization> localizations { get; }
    }
}
