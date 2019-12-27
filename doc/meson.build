valadoc = find_program ('valadoc')

valadoc_vala_dir = 'utlib-vala'
valadoc_target = custom_target (
    'valadoc',
    command: [
        valadoc,
        '--pkg=gee-0.8',
        '--pkg=glib-2.0',
        '--pkg=gobject-2.0',
        utlib_sources,
        '--package-name=' + meson.project_name (),
        '--package-version=' + meson.project_version (),
        '--verbose',
        '--force',
        '--use-svg-images',
        '-o', join_paths (meson.current_build_dir (), valadoc_vala_dir)
    ],
    build_by_default: true,
    output: valadoc_vala_dir,
    depends: utlib
)

valadoc_c_dir = 'utlib'
cdoc_target = custom_target (
    'cdocs',
    command: [
        valadoc,
        '--pkg=gee-0.8',
        '--pkg=glib-2.0',
        '--pkg=gobject-2.0',
        utlib_sources,
        '--package-name=' + meson.project_name (),
        '--package-version=' + meson.project_version (),
        '--verbose',
        '--force',
        '--use-svg-images',
        '-o', join_paths (meson.current_build_dir (), valadoc_c_dir),
        '--doclet-arg=' + 'src/utlib.h',
        '--doclet=gtkdoc'
    ],
    build_by_default: true,
    output: valadoc_c_dir,
    depends: utlib
)
