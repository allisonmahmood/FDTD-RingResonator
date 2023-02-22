# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/macbookpro2017-allisonm./.cargo/registry/src/github.com-1ecc6299db9ec823/netlib-src-0.8.0/source;/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/Applications/CMake.app/Contents/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "LAPACK built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "TGZ")
set(CPACK_INSTALL_CMAKE_PROJECTS "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build;LAPACK;ALL;/")
set(CPACK_INSTALL_PREFIX "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out")
set(CPACK_MODULE_PATH "/Users/macbookpro2017-allisonm./.cargo/registry/src/github.com-1ecc6299db9ec823/netlib-src-0.8.0/source/CMAKE")
set(CPACK_MONOLITHIC_INSTALL "ON")
set(CPACK_NSIS_DISPLAY_NAME "LAPACK")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "LAPACK")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OBJDUMP_EXECUTABLE "/usr/bin/objdump")
set(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX11.3.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/Applications/CMake.app/Contents/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "LAPACK- Linear Algebra Package")
set(CPACK_PACKAGE_FILE_NAME "LAPACK-3.9.0-Darwin")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "LAPACK")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "LAPACK")
set(CPACK_PACKAGE_NAME "LAPACK")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "University of Tennessee, Univ. of California Berkeley, Univ. of Colorado Denver and NAG Ltd")
set(CPACK_PACKAGE_VERSION "3.9.0")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "9")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/macbookpro2017-allisonm./.cargo/registry/src/github.com-1ecc6299db9ec823/netlib-src-0.8.0/source/LICENSE")
set(CPACK_RESOURCE_FILE_README "/Applications/CMake.app/Contents/share/cmake-3.25/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/Applications/CMake.app/Contents/share/cmake-3.25/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES "~$;.svn")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "lapack-3.9.0")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/macbookpro2017-allisonm./Documents/FDTD-RingResonator/samples/target/debug/build/netlib-src-c83f24920edafaa3/out/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
