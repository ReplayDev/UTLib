# UTLib

![Continuous Integration](https://github.com/nahuelwexd/UTLib/workflows/Continuous%20Integration/badge.svg)

Yet another library to wrap the YouTube Data API v3, but this time on Vala.

## Build & Install

Install the following dependencies:

 - `glib-2.0`
 - `gobject-2.0`
 - `gee-0.8`
 - `gio-2.0`
 - `libsoup-2.4`
 - `gjson-1.0`
 - `vala`
 - `meson`
 - `ninja`
 - `git`
 - `g-ir-compiler`

Run the following commands:

```sh
git clone https://github.com/nahuelwexd/UTLib.git
meson UTLib build --prefix /usr --buildtype release
ninja -C build install
```

## License

This project is licensed under the [GNU General Public License v3](COPYING) or
any later version.

[TL;DR](https://www.tldrlegal.com/l/gpl-3.0): You may copy, distribute and modify
the software as long as you track changes/dates in source files. Any modifications
to of software including (via compiler) GPL-licensed code must also be made available
under the GPL along with build & install instructions.
