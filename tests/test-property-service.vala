using Utlib;

class TestObject : Object {

    public string text { get; set; }
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

    return Test.run ();
}
