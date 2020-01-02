/* Utlib - Yet another wrapper to the YouTube Data API v3
 * Copyright (C) 2019-2020 Nahuel Gomez Castro
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

    public async string read_to_string_async (DataInputStream stream) throws IOError {
        string text = "";

        while (true) {
            var line = yield stream.read_line_async ();

            if (line == null) {
                break;
            }

            text += @"$line\n";
        }

        return text.strip ();
    }
}
