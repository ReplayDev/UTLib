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

    public class ContentDetails : Object {

        /**
         * The length of the video.
         *
         * The property is an [[https://en.wikipedia.org/wiki/ISO_8601#Durations|ISO 8601]] duration. For example, for
         * a video that is at least one minute long and less than one hour long, the duration is in the format ''PT#M#S'',
         * in which the letters ''PT'' indicate that the value specifies a period of time, and the letters ''M'' and ''S''
         * refer to length in minutes and seconds, respectively. The ''#'' characters preceding the ''M'' and ''S''
         * letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value
         * of ''PT15M33S'' indicates that the video is 15 minutes and 33 seconds long.
         *
         * If the video is at least one hour long, the duration is in the format ''PT#H#M#S'', in which the ''#''
         * preceding the letter ''H'' specifies the length of the video in hours and all of the other details are the
         * same as described above. If the video is at least one day long, the letters ''P'' and ''T'' are separated,
         * and the value's format is ''P#DT#H#M#S''. Please refer to the ISO 8601 specification for complete details.
         */
        public string? duration { get; }

        /**
         * Indicates whether the video is available in 3D or in 2D.
         */
        public string? dimension { get; }

        /**
         * Indicates whether the video is available in high definition (''HD'') or only in standard definition.
         *
         * Valid values for this property are:
         *
         *  * ``hd``
         *  * ``sd``
         */
        public string? definition { get; }

        /**
         * Indicates whether captions are available for the video.
         *
         * Valid values for this property are:
         *
         *  * ``false``
         *  * ``true``
         */
        public string? caption { get; }

        /**
         * Indicates whether the video represents licensed content, which means that the content was uploaded to a
         * channel linked to a YouTube content partner and then claimed by that partner.
         */
        public bool? licensed_content { get; }

        /**
         * The {@link Utlib.RegionRestriction} object contains information about the countries where a video is (or is
         * not) viewable.
         *
         * The object will contain either the {@link Utlib.RegionRestriction.allowed} property or the
         * {@link Utlib.RegionRestriction.blocked} property.
         */
        public RegionRestriction region_restriction { get; }

        /**
         * Specifies the ratings that the video received under various rating schemes.
         */
        public ContentRating content_rating { get; }
    }
}
