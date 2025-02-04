#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

set(TARGET_LINK_OPTIONS 
  "-sUSE_WEBGPU=0"  
  "--js-library=${_IMPORT_PREFIX}/lib/js/library_webgpu_enum_tables.js"
  "--js-library=${_IMPORT_PREFIX}/lib/js/library_webgpu_generated_struct_info.js"
  "--js-library=${_IMPORT_PREFIX}/lib/js/library_webgpu_generated_sig_info.js"
  "--js-library=${_IMPORT_PREFIX}/lib/js/library_webgpu.js"
  "--closure-args=--externs=${_IMPORT_PREFIX}/lib/js/webgpu-externs.js"
  "-sEXIT_RUNTIME=0"
  "-Wno-limited-postlink-optimizations"
  "--closure=1"
)

# Import target "dawn::webgpu_dawn" for configuration "Release"
set_property(TARGET dawn::webgpu_dawn APPEND PROPERTY IMPORTED_CONFIGURATIONS RELASE)
set_target_properties(dawn::webgpu_dawn PROPERTIES
  INTERFACE_LINK_OPTIONS ${TARGET_LINK_OPTIONS} 
  INTERFACE_SOURCES "${_IMPORT_PREFIX}/src/webgpu.cpp" 
)

list(APPEND _cmake_import_check_targets dawn::webgpu_dawn )
list(APPEND _cmake_import_check_files_for_dawn::webgpu_dawn 
  "${_IMPORT_PREFIX}/lib/js/library_webgpu_enum_tables.js" 
  "${_IMPORT_PREFIX}/lib/js/library_webgpu_generated_struct_info.js" 
  "${_IMPORT_PREFIX}/lib/js/library_webgpu_generated_sig_info.js"
  "${_IMPORT_PREFIX}/lib/js/library_webgpu.js"
  "${_IMPORT_PREFIX}/lib/js/webgpu-externs.js"
)

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
