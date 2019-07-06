utlib_sources = files (
    'data/video/content-details.vala',
    'data/video/content-rating.vala',
    'data/video/player.vala',
    'data/video/recording-details.vala',
    'data/video/region-restriction.vala',
    'data/video/statistics.vala',
    'data/video/status.vala',
    'data/video/topic-details.vala',
    'data/video/video-localization.vala',
    'data/video/video-snippet.vala',
    'data/video/video.vala',

    'data/thumbnail.vala',
)

dependencies = [
    glib_dep,
    gobject_dep,
    gee_dep
]

utlib_version = meson.project_version ()
version_array = utlib_version.split ('.')
utlib_major_version = version_array[0].to_int ()
utlib_minor_version = version_array[1].to_int ()
utlib_micro_version = version_array[2].to_int ()

utlib_api_version = '@0@.0'.format (utlib_major_version)
utlib_api_name = '@0@-@1@'.format (meson.project_name (), utlib_api_version)
utlib_gi_name = 'UTLib-@0@'.format (utlib_api_version)

utlib_header = '@0@.h'.format (meson.project_name ())
utlib_vapi = '@0@.vapi'.format (utlib_api_name)
utlib_gir = '@0@.gir'.format (utlib_gi_name)
utlib_typelib = '@0@.typelib'.format (utlib_gi_name)

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

pkgconfig = import ('pkgconfig')
pkgconfig.generate (
    utlib,
    name: utlib_api_name,
    requires: dependencies,
    description: 'Yet another wrapper to the YouTube Data API v3',
    url: 'https://github.com/UniTube/utlib'
)
