files_property_service = files (
    'test-property-service.vala',
)

exe_property_service = executable (
    'test-property-service',
    files_property_service,
    dependencies: utlib_dep,
    link_with: utlib
)

test (
    'test-property-service',
    exe_property_service
)
