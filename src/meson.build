utlib_sources = files (
    'requests/request.vala',

    'resources/video-category/video-category-snippet.vala',
    'resources/video-category/video-category.vala',

    'responses/list-response.vala',
    'responses/page-info.vala',

    'services/property-service.vala',
    'services/property.vala',
)

utlib_version = meson.project_version ()
version_array = utlib_version.split ('.')
utlib_major_version = version_array[0].to_int ()
utlib_minor_version = version_array[1].to_int ()
utlib_micro_version = version_array[2].to_int ()

utlib_api_version = '@0@.0'.format (utlib_major_version)
utlib_api_name = '@0@-@1@'.format (meson.project_name (), utlib_api_version)
utlib_gi_name = 'Utlib-@0@'.format (utlib_api_version)

utlib_header = '@0@.h'.format (meson.project_name ())
utlib_vapi = '@0@.vapi'.format (utlib_api_name)
utlib_gir = '@0@.gir'.format (utlib_gi_name)
utlib_typelib = '@0@.typelib'.format (utlib_gi_name)
utlib_pc = '@0@.pc'.format (utlib_api_name)

dependencies = [
    glib_dep,
    gobject_dep,
    gee_dep,
    gio_dep
]

utlib = library (
    meson.project_name (),
    utlib_sources,
    vala_header: utlib_header,
    vala_vapi: utlib_vapi,
    vala_gir: utlib_gir,
    dependencies: dependencies,
    install: true,
    install_dir: [true, true, true, true]
)

g_ir_compiler = find_program ('g-ir-compiler')
custom_target (
    utlib_typelib,
    command: [
        g_ir_compiler,
        '--shared-library',
        utlib.full_path (),
        '--output',
        '@OUTPUT@',
        join_paths (meson.current_build_dir (), utlib_gir)
    ],
    output: utlib_typelib,
    depends: utlib,
    install: true,
    install_dir: join_paths (get_option ('libdir'), 'girepository-1.0')
)

utlib_dep = declare_dependency (
    link_with: utlib,
    dependencies: dependencies,
    include_directories: [
        include_directories ('.')
    ]
)


requires = []

foreach dependency : dependencies
    name = dependency.name ()
    requires += name
endforeach

pkgconfig_conf = configuration_data ()
pkgconfig_conf.set ('prefix', get_option ('prefix'))
pkgconfig_conf.set ('libdir', get_option ('libdir'))
pkgconfig_conf.set ('api_name', utlib_api_name)
pkgconfig_conf.set ('description', 'Yet another wrapper to the YouTube Data API v3')
pkgconfig_conf.set ('url', 'https://gitlab.com/nahuelwexd/utlib')
pkgconfig_conf.set ('version', utlib_version)
pkgconfig_conf.set ('requires', ', '.join (requires))
pkgconfig_conf.set ('lib_name', meson.project_name ())

configure_file (
    input: 'pc.meson',
    output: utlib_pc,
    configuration: pkgconfig_conf,
    install: true,
    install_dir: get_option ('libdir') / 'pkgconfig'
)
