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
     * Describes original video file properties, including technical details about audio and video streams, but also
     * metadata information like content length, digitalization time, or geotagging information.
     */
    public class FileDetails : Object {

        /**
         * The uploaded file's name.
         *
         * This field is present whether a video file or another type of file was uploaded.
         */
        public string? file_name { get; }

        /**
         * The uploaded file's size in bytes.
         *
         * This field is present whether a video file or another type of file was uploaded.
         */
        public ulong? file_size { get; }

        /**
         * The uploaded file's type as detected by YouTube's video processing engine.
         *
         * Currently, YouTube only processes video files, but this field is present whether a video file or another type
         * of file was uploaded.
         *
         * Valid values for this property are:
         *
         *  * ``archive`` - The file is an archive file, such as a .zip archive.
         *  * ``audio`` - The file is a known audio file type, such as an .mp3 file.
         *  * ``document`` - The file is a document or text file, such as a MS Word document.
         *  * ``image`` - The file is an image file, such as a .jpeg image.
         *  * ``other`` - The file is another non-video file type.
         *  * ``project`` - The file is a video project file, such as a Microsoft Windows Movie Maker project, that does not contain actual video data.
         *  * ``video`` - The file is a known video file type, such as an .mp4 file.
         */
        public string? file_type { get; }

        /**
         * The uploaded video file's container format.
         */
        public string? container { get; }

        /**
         * A list of video streams contained in the uploaded video file.
         *
         * Each item in the list contains detailed metadata about a video stream.
         */
        public Gee.ArrayList<VideoStream> video_streams { get; }

        /**
         * A list of audio streams contained in the uploaded video file.
         *
         * Each item in the list contains detailed metadata about an audio stream.
         */
        public Gee.ArrayList<AudioStream> audio_streams { get; }

        /**
         * The length of the uploaded video in milliseconds.
         */
        public ulong? duration_ms { get; }

        /**
         * The uploaded video file's combined (video and audio) bitrate in bits per second.
         */
        public ulong? bitrate_bps { get; }

        /**
         * The date and time when the uploaded video file was created.
         *
         * The value is specified in [[http://www.w3.org/TR/NOTE-datetime|ISO 8601]] format. Currently, the following
         * ISO 8601 formats are supported:
         *
         *  * Date only: ``YYYY-MM-DD``
         *  * Naive time: ``YYYY-MM-DDTHH:MM:SS``
         *  * Time with timezone: ``YYYY-MM-DDTHH:MM:SS+HH:MM``
         */
        public string? creation_time { get; }
    }
}
