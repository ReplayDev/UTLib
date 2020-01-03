using Utlib;

class TestObject : Object {

    public string text { get; set; }
    public string name { get; set; }
    public bool is_random { get; set; }
}

int main (string[] args) {
    Test.init (ref args);

    Test.add_func (
        "/utlib/property-service/install-property/works",
        () => {
            var test_object = new TestObject ();
            var property_service = new PropertyService (test_object);

            var property_was_installed = property_service.install_property ("text");

            assert_true (property_was_installed);
        }
    );

    Test.add_func (
        "/utlib/property-service/install-property/fails",
        () => {
            var test_object = new TestObject ();
            var property_service = new PropertyService (test_object);

            var property_was_installed = property_service.install_property ("number");

            assert_false (property_was_installed);
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/property-with-no-value",
        () => {
            var test_object = new TestObject ();
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text");

            var parsed_properties = property_service.parse_properties ();

            assert_null (parsed_properties);
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/property-with-same-name",
        () => {
            var test_object = new TestObject () { text = "Hello" };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text");

            var parsed_properties = property_service.parse_properties ();

            assert (parsed_properties == "text=Hello");
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/property-with-different-name",
        () => {
            var test_object = new TestObject () { text = "Hello" };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text", "greeting");

            var parsed_properties = property_service.parse_properties ();

            assert (parsed_properties == "greeting=Hello");
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/no-properties",
        () => {
            var test_object = new TestObject ();
            var property_service = new PropertyService (test_object);

            var parsed_properties = property_service.parse_properties ();

            assert_null (parsed_properties);
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/multiple-properties",
        () => {
            var test_object = new TestObject () { text = "hello", name = "Robert" };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text");
            property_service.install_property ("name");

            var parsed_properties = property_service.parse_properties ();

            assert (parsed_properties == "text=hello&name=Robert");
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/special-characters",
        () => {
            var test_object = new TestObject () { text = "hello, how are you?" };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text");

            var parsed_properties = property_service.parse_properties ();

            assert (parsed_properties == "text=hello,%20how%20are%20you%3F");
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/not-supported-types",
        () => {
            var test_object = new TestObject () { is_random = true };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("is-random");

            var parsed_properties = property_service.parse_properties ();

            assert_null (parsed_properties);
        }
    );

    Test.add_func (
        "/utlib/property-service/parse-properties/not-supported-types-2",
        () => {
            var test_object = new TestObject () { text = "hello", is_random = true };
            var property_service = new PropertyService (test_object);

            property_service.install_property ("text");
            property_service.install_property ("is-random");

            var parsed_properties = property_service.parse_properties ();

            assert (parsed_properties == "text=hello");
        }
    );

    return Test.run ();
}
