namespace Utlib {

    public class ListResponse<T> : Object {

        /**
         * Identifies the API resource's type.
         */
        public string kind { get; set; }

        /**
         * The Etag of this resource.
         */
        public string etag { get; set; }

        /**
         * The token that can be used as the value of the ``page_token``
         * parameter to retrieve the next page in the result set.
         */
        public string next_page_token { get; set; }

        /**
         * The token that can be used as the value of the ``page_token``
         * parameter to retrieve the previous page in the result set.
         */
        public string prev_page_token { get; set; }

        /**
         * The {@link Utlib.PageInfo} object encapsulates paging information for
         * the result set.
         */
        public PageInfo page_info { get; set; }
    }
}
