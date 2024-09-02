#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dawn::webgpu_dawn" for configuration "Debug"
set_property(TARGET dawn::webgpu_dawn APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(dawn::webgpu_dawn PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libwebgpu_dawn.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libwebgpu_dawn.dylib"
  )

list(APPEND _cmake_import_check_targets dawn::webgpu_dawn )
list(APPEND _cmake_import_check_files_for_dawn::webgpu_dawn "${_IMPORT_PREFIX}/lib/libwebgpu_dawn.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
