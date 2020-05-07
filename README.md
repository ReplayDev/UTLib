# UTLib

<a href="https://github.com/nahuelwexd/UTLib/commits/master">
  <img alt="Continuous Integration" href="https://github.com/nahuelwexd/UTLib/workflows/Continuous%20Integration/bagde.svg">
</a>
<a href="COPYING">
  <img alt="License" href="https://img.shields.io/github/license/nahuelwexd/UTLib?label=License&logo=gnu">
</a>

UTLib is a YouTube Data API client library for Vala, that enables the access to
all the YouTube data without the worry of managing http requests or parsing JSON
responses.

This library is written mainly for [UniTube GTK](https://github.com/nahuelwexd/UniTube-GTK),
but you can use it where you want as long you respect the [license](#License)

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
