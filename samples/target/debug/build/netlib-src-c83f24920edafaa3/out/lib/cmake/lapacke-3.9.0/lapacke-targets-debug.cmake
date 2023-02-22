#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "lapacke" for configuration "Debug"
set_property(TARGET lapacke APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lapacke PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "tmglib;lapack"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblapacke.3.9.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/liblapacke.3.dylib"
  )

list(APPEND _cmake_import_check_targets lapacke )
list(APPEND _cmake_import_check_files_for_lapacke "${_IMPORT_PREFIX}/lib/liblapacke.3.9.0.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
