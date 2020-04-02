using Utlib;

void main (string[] args) {
    Test.init (ref args);

    Test.add_func (
        "/utlib/video/list/by-video-id",
        () => {
        }
    );

    Test.add_func (
        "/utlib/video/list/multiple-video-ids",
        () => {
        }
    );

    Test.add_func (
        "/utlib/video/list/most-popular-videos",
        () => {
            var client = new Client () {
                api_key = "AIzaSyCSn3I_2mCxfZBttUCAYCsVl-kpOoN4KrU"
            };

            var video_list_request = client.videos.list ("snippet");
            video_list_request.chart = "mostPopular";
            video_list_request.region_code = "US";

            var video_list_response = video_list_request.execute ();

            assert_nonnull (video_list_response);
            assert_nonnull (video_list_response.items);
            debug (@"$(video_list_response.items.size)");
            assert (video_list_response.items.size == 5);
        }
    );

    Test.add_func (
        "/utlib/video/list/my-liked-videos",
        () => {
        }
    );

    Test.run ();
}
