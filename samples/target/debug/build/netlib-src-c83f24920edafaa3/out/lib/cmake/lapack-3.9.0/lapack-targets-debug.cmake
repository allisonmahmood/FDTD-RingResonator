#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "blas" for configuration "Debug"
set_property(TARGET blas APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(blas PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libblas.3.9.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libblas.3.dylib"
  )

list(APPEND _cmake_import_check_targets blas )
list(APPEND _cmake_import_check_files_for_blas "${_IMPORT_PREFIX}/lib/libblas.3.9.0.dylib" )

# Import target "lapack" for configuration "Debug"
set_property(TARGET lapack APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lapack PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "blas"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblapack.3.9.0.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/liblapack.3.dylib"
  )

list(APPEND _cmake_import_check_targets lapack )
list(APPEND _cmake_import_check_files_for_lapack "${_IMPORT_PREFIX}/lib/liblapack.3.9.0.dylib" )

# Import target "tmglib" for configuration "Debug"
set_property(TARGET tmglib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(tmglib PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libtmglib.dylib"
  IMPORTED_SONAME_DEBUG "@rpath/libtmglib.dylib"
  )

list(APPEND _cmake_import_check_targets tmglib )
list(APPEND _cmake_import_check_files_for_tmglib "${_IMPORT_PREFIX}/lib/libtmglib.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
