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

    public class Status : Object {

        /**
         * The status of the uploaded video.
         *
         * Valid values for this property are:
         *
         *  * ``deleted``
         *  * ``failed``
         *  * ``processed``
         *  * ``rejected``
         *  * ``uploaded``
         */
        public string? upload_status { get; }

        /**
         * This value explains why a video failed to upload.
         *
         * This property is only present if the {@link Utlib.Status.upload_status} property indicates that the upload
         * failed.
         *
         * Valid values for this property are:
         *
         *  * ``codec``
         *  * ``conversion``
         *  * ``emptyFile``
         *  * ``invalidFile``
         *  * ``tooSmall``
         *  * ``uploadAborted``
         */
        public string? failure_reason { get; }

        /**
         * This value explains why YouTube rejected an uploaded video.
         *
         * This property is only present if the {@link Utlib.Status.upload_status} property indicates that the upload
         * was rejected.
         *
         * Valid values for this property are:
         *
         *  * ``claim``
         *  * ``copyright``
         *  * ``duplicate``
         *  * ``inappropiate``
         *  * ``legal``
         *  * ``length``
         *  * ``termsOfUse``
         *  * ``trademark``
         *  * ``uploaderAccountClosed``
         *  * ``uploaderAccountSuspended``
         */
        public string? rejection_reason { get; }

        /**
         * The video's privacy status.
         *
         * Valid values for this property are:
         *
         *  * ``private``
         *  * ``public``
         *  * ``unlisted``
         */
        public string? privacy_status { get; }

        /**
         * The date and time when the video is scheduled to publish.
         *
         * It can be set if the privacy status of the video is private. The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]]
         * (``YYYY-MM-DDThh:mm:ss.sZ``) format. Note the following two additional points about this property's behavior:
         *
         *  * If you set this property's value when calling the {@link Utlib.VideosResource.update} method, you must also set the {@link Utlib.Status.privacy_status} property value to ``private`` even if the video is already private.
         *  * If your request schedules a video to be published at some time in the past, the video will be published right away. As such, the effect of setting the {@link Utlib.Status.publish_at} property to a past date and time is the same as changing the video's {@link Utlib.Status.privacy_status} from ``private`` to ``public``.
         */
        public DateTime publish_at { get; }

        /**
         * The video's license.
         *
         * Valid values for this property are:
         *
         *  * ``creativeCommon``
         *  * ``youtube``
         */
        public string? license { get; }

        /**
         * This value indicates whether the video can be embedded on another website.
         */
        public bool? embeddable { get; }

        /**
         * This value indicates whether the extended video statistics on the video's watch page are publicly viewable.
         *
         * By default, those statistics are viewable, and statistics like a video's viewcount and ratings will still be
         * publicly visible even if this property's value is set to ``false``.
         */
        public bool? public_stats_viewable { get; }
    }
}
