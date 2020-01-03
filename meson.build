project (
    'utlib',
    [ 'c', 'vala' ],
    version: '0.1.0',
    license: 'GPL-3.0-or-later'
)

glib_dep = dependency ('glib-2.0')
gobject_dep = dependency ('gobject-2.0')
gee_dep = dependency ('gee-0.8')
gio_dep = dependency ('gio-2.0')
soup_dep = dependency ('libsoup-2.4')
gjson_dep = dependency ('gjson-1.0', fallback: ['vul', 'gjson_dep'])

subdir ('src')
subdir ('tests')

if get_option ('with-docs')
    subdir ('doc')
endif
