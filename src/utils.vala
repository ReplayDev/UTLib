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
