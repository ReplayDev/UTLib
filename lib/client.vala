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

using Soup;

public class Utlib.Client : Object {

    private VideosResource _videos;


    public string api_key { get; set; }
    public Session session { get; construct; }

    public VideosResource videos {
        get {
            return this._videos;
        }
    }


    public Client (Session session = new Session ()) {
        Object (
            session: session
        );
    }

    construct {
        this._videos = new VideosResource (this);
    }
}
