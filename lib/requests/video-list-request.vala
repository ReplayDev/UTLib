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

public class Utlib.VideoListRequest : Request<VideoListResponse> {

    public string part { get; private set; }
    public string chart { get; set; }
    public string id { get; set; }
    public string my_rating { get; set; }
    public string hl { get; set; }
    public uint max_height { get; set; }
    public uint max_results { get; set; }
    public uint max_width { get; set; }
    public string on_behalf_of_content_owner { get; set; }
    public string page_token { get; set; }
    public string region_code { get; set; }
    public string video_category_id { get; set; }

    public override string url {
        get {
            return "https://www.googleapis.com/youtube/v3/videos";
        }
    }


    internal VideoListRequest (Client client, string part) {
        base (client);
        this.part = part;
        this.init_parameters ();
    }

    protected override void init_parameters () {
        base.init_parameters ();

        this.request_parameters.set (
            "part", new Parameter () {
                name = "part",
                is_required = true,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "chart", new Parameter () {
                name = "chart",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "id", new Parameter () {
                name = "id",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "my-rating", new Parameter () {
                name = "myRating",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "hl", new Parameter () {
                name = "hl",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "max-height", new Parameter () {
                name = "maxHeight",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "max-results", new Parameter () {
                name = "maxResults",
                is_required = false,
                default_value = "5"
            }
        );
        this.request_parameters.set (
            "max-width", new Parameter () {
                name = "maxWidth",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "on-behalf-of-content-owner", new Parameter () {
                name = "onBehalfOfContentOwner",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "page-token", new Parameter () {
                name = "pageToken",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "region-code", new Parameter () {
                name = "regionCode",
                is_required = false,
                default_value = ""
            }
        );
        this.request_parameters.set (
            "video-category-id", new Parameter () {
                name = "videoCategoryId",
                is_required = false,
                default_value = "0"
            }
        );
    }
}
