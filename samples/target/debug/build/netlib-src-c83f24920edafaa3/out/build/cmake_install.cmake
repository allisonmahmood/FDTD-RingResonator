# Install script for directory: /Users/macbookpro2017-allisonm./.cargo/registry/src/github.com-1ecc6299db9ec823/netlib-src-0.8.0/source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0/lapack-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0/lapack-targets.cmake"
         "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CMakeFiles/Export/a4e4676f2eb8f31661a886d342724ab6/lapack-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0/lapack-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0/lapack-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0" TYPE FILE FILES "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CMakeFiles/Export/a4e4676f2eb8f31661a886d342724ab6/lapack-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0" TYPE FILE FILES "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CMakeFiles/Export/a4e4676f2eb8f31661a886d342724ab6/lapack-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/lapack.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/lapack-3.9.0" TYPE FILE FILES
    "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CMakeFiles/lapack-config.cmake"
    "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/lapack-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/BLAS/cmake_install.cmake")
  include("/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CBLAS/cmake_install.cmake")
  include("/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/SRC/cmake_install.cmake")
  include("/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/TESTING/MATGEN/cmake_install.cmake")
  include("/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/LAPACKE/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
