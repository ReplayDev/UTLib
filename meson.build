project (
    'utlib',
    [ 'c', 'vala' ],
    version: '0.1.0',
    license: 'LGPL-3.0-or-later'
)

glib_dep = dependency ('glib-2.0')
gobject_dep = dependency ('gobject-2.0')
gee_dep = dependency ('gee-0.8')
gio_dep = dependency ('gio-2.0')

subdir ('src')

if get_option ('with-docs')
    subdir ('doc')
endif
