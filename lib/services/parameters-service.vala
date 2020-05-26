/* UTLib - Yet another wrapper to the YouTube Data API v3.
 * Copyright (C) 2020 Nahuel Gomez Castro <nahual_gomca@outlook.com.ar>
 *
 * This library is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

public class Utlib.ParametersService : Object {

    private Gee.Map<string, Utlib.Parameter> parameters;

    construct {
        this.parameters = new Gee.HashMap<string, Utlib.Parameter> ();
    }

    public new Utlib.Parameter @get (string prop_name) {
        return this.parameters[prop_name];
    }

    public new void @set (string prop_name, Utlib.Parameter param) {
        this.parameters[prop_name] = param;
    }
}
