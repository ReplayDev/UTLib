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
     * Describes processing status and progress and availability of some other {@link Video} resource parts.
     */
    public class ProcessingDetails : Object {

        /**
         * The video's processing status.
         *
         * This value indicates whether YouTube was able to process the video or if the video is still being processed.
         *
         * Valid values for this property are:
         *
         *  * ``failed`` - Video processing has failed. See {@link processing_failure_reason}.
         *  * ``processing`` - Video is currently being processed. See {@link processing_progress}.
         *  * ``succeeded`` - Video has been successfully processed.
         *  * ``terminated`` - Processing information is no longer available.
         */
        public virtual string? processing_status { get; }

        /**
         * The {@link ProcessingProgress} object contains information about the progress YouTube has made in processing
         * the video.
         *
         * The values are really only relevant if the video's processing status is ``processing``.
         */
        public virtual ProcessingProgress processing_progress { get; }

        /**
         * The reason that YouTube failed to process the video.
         *
         * This property will only have a value if the {@link processing_status} property's value
         * is ``failed``.
         *
         * Valid values for this property are:
         *
         *  * ``other`` - Some other processing component has failed.
         *  * ``streamingFailed`` - Video could not be sent to streamers.
         *  * ``transcodeFailed`` - Content transcoding has failed.
         *  * ``uploadFailed`` - File delivery has failed.
         */
        public virtual string? processing_failure_reason { get; }

        /**
         * This value indicates whether file details are available for the uploaded video.
         *
         * You can retrieve a video's file details by requesting the {@link FileDetails} part in your
         * {@link VideosResource.list} request.
         */
        public virtual string? file_details_availability { get; }

        /**
         * This value indicates whether the video processing engine has generated suggestions that might improve YouTube's
         * ability to process the video, warnings that explain video processing problems, or errors that cause video
         * processing problems.
         *
         * You can retrieve these suggestions by requesting the {@link Suggestions} part in your
         * {@link VideosResource.list} request.
         */
        public virtual string? processing_issues_availability { get; }

        /**
         * This value indicates whether keyword (tag) suggestions are available for the video.
         *
         * Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve
         * these suggestions by requesting the {@link Suggestions} part in your {@link VideosResource.list} request.
         */
        public virtual string? tag_suggestions_availability { get; }

        /**
         * This value indicates whether video editing suggestions, which might improve video quality or the playback
         * experience, are available for the video.
         *
         * You can retrieve these suggestions by requesting the {@link Suggestions} part in your
         * {@link VideosResource.list} request.
         */
        public virtual string? editor_suggestions_availability { get; }

        /**
         * This value indicates whether thumbnail images have been generated for the video.
         */
        public virtual string? thumbnails_availability { get; }
    }
}
