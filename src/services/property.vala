/* Utlib - Yet another wrapper to the YouTube Data API v3
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

    class Property : Object {

        public string property_name { get; set; }

        public Type property_type { get; set; }

        public string property_name_in_request { get; set; }

        public string? parse_property (Object object) {
            switch (this.property_type) {
                case Type.STRING:
                    string value;
                    object.get (this.property_name, out value);
                    return @"$property_name_in_request=$value";
                default:
                    return null;
            }
        }
    }
}
