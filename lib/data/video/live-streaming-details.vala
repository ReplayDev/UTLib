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

    public class LiveStreamingDetails : Object {

        /**
         * The time that the broadcast actually started.
         *
         * The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]] (``YYYY-MM-DDThh:mm:ss.sZ``) format.
         * This value will not be available until the broadcast begins.
         */
        public virtual DateTime actual_start_time { get; }

        /**
         * The time that the broadcast actually ended.
         *
         * The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]] (``YYYY-MM-DDThh:mm:ss.sZ``) format.
         * This value will not be available until the broadcast is over.
         */
        public virtual DateTime actual_end_time { get; }

        /**
         * The time that the broadcast is scheduled to begin.
         *
         * The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]] (``YYYY-MM-DDThh:mm:ss.sZ``) format.
         */
        public virtual DateTime scheduled_start_time { get; }

        /**
         * The time that the broadcast is scheduled to end.
         *
         * The value is specified in [[https://www.w3.org/TR/NOTE-datetime|ISO 8601]] (``YYYY-MM-DDThh:mm:ss.sZ``) format.
         * If the value is empty or the property is not present, then the broadcast is scheduled to continue indefinitely.
         */
        public virtual DateTime scheduled_end_time { get; }

        /**
         * The number of viewers currently watching the broadcast.
         *
         * The property and its value will be present if the broadcast has current viewers and the broadcast owner has
         * not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for
         * a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an
         * archived video of a live broadcast that already ended.
         */
        public virtual ulong? concurrent_viewers { get; }

        /**
         * The ID of the currently active lice chat attached to this video.
         *
         * This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast
         * transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts
         * that live chat id will no longer be tied to this video but rather to the new video being displayed at the
         * persistent page.
         */
        public virtual string? active_live_chat_id { get; }
    }
}
