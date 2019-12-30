namespace Utlib {

    public class PageInfo : Object {

        /**
         * The total number of results in the result set.
         */
        public int total_results { get; set; }

        /**
         * The number of results included in the API response.
         */
        public int results_per_page { get; set; }
    }
}
