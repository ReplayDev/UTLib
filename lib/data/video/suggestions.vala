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
     * Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor
     * suggestions.
     */
    public class Suggestions : Object {

        /**
         * A list of errors that will prevent YouTube from successfully processing the uploaded video.
         *
         * These errors indicate that, regardless of the video's current processing status, eventually, that status will
         * almost certainly be ``failed``.
         *
         * Valid values for this property are:
         *
         *  * ``archiveFile`` - An archive file (e.g., a ZIP archive).
         *  * ``audioFile`` - File contains audio only (e.g., an MP3 file).
         *  * ``docFile`` - Document or text file (e.g., MS Word document).
         *  * ``imageFile`` - Image file (e.g., a JPEG image).
         *  * ``notAVideoFile`` - Other non-video file.
         *  * ``projectFile`` - Movie project file (e.g., Microsoft Windows Movie Maker project).
         */
        public virtual Gee.ArrayList<string> processing_errors { get; }

        /**
         * A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an
         * erroneous transcoding.
         *
         * These warnings are generated before YouTube actually processes the uploaded video file. In addition, they
         * identify issues that do not necessarily indicate that video processing will fail but that still might cause
         * problems such as sync issues, video artifacts, or a missing audio track.
         *
         * Valid values for this property are:
         *
         *  * ``hasEditlist`` - Edit lists are not currently supported.
         *  * ``inconsistentResolution`` - Conflicting container and stream resolutions.
         *  * ``problematicAudioCodec`` - Audio codec that is known to cause problems was used.
         *  * ``problematicVideoCodec`` - Video codec that is known to cause problems was used.
         *  * ``unknownAudioCodec`` - Unrecognized audio codec, transcoding is likely to fail.
         *  * ``unknonwContainer`` - Unrecognized file format, transcoding is likely to fail.
         *  * ``unknownVideoCodec`` - Unrecognized video codec, transcoding is likely to fail.
         */
        public virtual Gee.ArrayList<string> processing_warnings { get; }

        /**
         * A list of suggestions that may improve YouTube's ability to process the video.
         *
         * Valid values for this property are:
         *
         *  * ``nonStreamableMov`` - The MP4 file is not streamable, this will slow down the processing.
         *  * ``sendBestQualityVideo`` - Probably a better quality version of the video exists.
         */
        public virtual Gee.ArrayList<string> processing_hints { get; }

        /**
         * A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will
         * locate your video when searching or browsing on YouTube.
         */
        public virtual Gee.ArrayList<TagSuggestion> tag_suggestions { get; }

        /**
         * A list of video editing operations that might improve the video quality or playback experience of the uploaded
         * video.
         *
         * Valid values for this property are:
         *
         *  * ``audioQuietAudioSwap`` - The audio track appears silent and could be swapped with a better quality one.
         *  * ``videoAutoLevels`` - Picture brightness levels seem off and could be corrected.
         *  * ``videoCrop`` - Margins (mattes) detected around the picture could be cropped.
         *  * ``videoStabilize`` - The video appears shaky and could be stabilized.
         */
        public virtual Gee.ArrayList<string> editor_suggestions { get; }
    }
}
