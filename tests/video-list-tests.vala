using Utlib;

class VideoListTests {

    static Client client = new Client () {
        api_key = Environment.get_variable ("API_KEY")
    };

    static void main (string[] args) {
        Test.init (ref args);

        Test.add_func (
            "/utlib/video/list/by-video-id",
            () => {
                var request = client.videos.list ("snippet");
                request.id = "Ks-_Mh1QhMc";

                try {
                    var response = request.execute ();
                    assert (response.items.size == 1);
                    assert (response.items[0].id == request.id);
                } catch (Error e) {
                    assert_not_reached ();
                }
            }
        );

        Test.add_func (
            "/utlib/video/list/multiple-video-ids",
            () => {
                var request = client.videos.list ("snippet");
                request.id = "Ks-_Mh1QhMc,c0KYU2j0TM4,eIho2S0ZahI";

                try {
                    var response = request.execute ();
                    assert (response.items.size == 3);

                    string[] ids = new string[response.items.size];
                    for (var i = 0; i < response.items.size; i++) {
                        ids[i] = response.items[i].id;
                    }

                    assert (string.joinv (",", ids) == request.id);
                } catch (Error e) {
                    assert_not_reached ();
                }
            }
        );

        Test.add_func (
            "/utlib/video/list/most-popular-videos",
            () => {
                var request = client.videos.list ("snippet");
                request.chart = "mostPopular";
                request.region_code = "US";

                try {
                    var response = request.execute ();
                    assert (response.items.size == 5);

                    foreach (var item in response.items) {
                        assert (item.kind == "youtube#video");
                    }
                } catch (Error e) {
                    assert_not_reached ();
                }
            }
        );

        Test.add_func (
            "/utlib/video/list/my-liked-videos",
            () => {
            }
        );

        Test.run ();
    }
}
