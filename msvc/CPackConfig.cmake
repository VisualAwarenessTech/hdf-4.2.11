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


SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_NSIS "")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "")
SET(CPACK_BINARY_STGZ "")
SET(CPACK_BINARY_TBZ2 "")
SET(CPACK_BINARY_TGZ "")
SET(CPACK_BINARY_TZ "")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_CMAKE_GENERATOR "Visual Studio 12")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "ZIP")
SET(CPACK_INSTALL_CMAKE_PROJECTS "D:/Development/op3d_active/hdf-4.2.11/msvc;HDF4;ALL;/")
SET(CPACK_INSTALL_PREFIX "C:/Program Files (x86)/HDF4")
SET(CPACK_MODULE_PATH "D:/Development/op3d_active/hdf-4.2.11/config/cmake;D:/Development/op3d_active/hdf-4.2.11/config/cmake_ext_mod")
SET(CPACK_MONOLITHIC_INSTALL "ON")
SET(CPACK_NSIS_CONTACT "help@hdfgroup.org")
SET(CPACK_NSIS_DISPLAY_NAME "HDF 4.2.11")
SET(CPACK_NSIS_DISPLAY_NAME_SET "TRUE")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_MODIFY_PATH "ON")
SET(CPACK_NSIS_MUI_ICON "D:/Development/op3d_active/hdf-4.2.11/config/cmake_ext_mod\\hdf.ico")
SET(CPACK_NSIS_MUI_UNIICON "D:/Development/op3d_active/hdf-4.2.11/config/cmake_ext_mod\\hdf.ico")
SET(CPACK_NSIS_PACKAGE_NAME "HDF 4.2.11")
SET(CPACK_OUTPUT_CONFIG_FILE "D:/Development/op3d_active/hdf-4.2.11/msvc/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "D:/Development/op3d_active/hdf-4.2.11/release_notes/RELEASE.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "HDF4 built using CMake")
SET(CPACK_PACKAGE_FILE_NAME "HDF-4.2.11-win32")
SET(CPACK_PACKAGE_ICON "D:/Development/op3d_active/hdf-4.2.11/config/cmake_ext_mod\\hdf.bmp")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "HDF_Group\\HDF\\4.2.11")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "HDF-4.2.11")
SET(CPACK_PACKAGE_NAME "HDF")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "HDF_Group")
SET(CPACK_PACKAGE_VERSION "4.2.11")
SET(CPACK_PACKAGE_VERSION_MAJOR "4.2")
SET(CPACK_PACKAGE_VERSION_MINOR "11")
SET(CPACK_PACKAGE_VERSION_PATCH "")
SET(CPACK_RESOURCE_FILE_LICENSE "D:/Development/op3d_active/hdf-4.2.11/msvc/COPYING.txt")
SET(CPACK_RESOURCE_FILE_README "D:/Development/op3d_active/hdf-4.2.11/release_notes/RELEASE.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files (x86)/CMake 2.8/share/cmake-2.8/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "ZIP")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "D:/Development/op3d_active/hdf-4.2.11/msvc/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_TBZ2 "")
SET(CPACK_SOURCE_TGZ "")
SET(CPACK_SOURCE_TZ "")
SET(CPACK_SOURCE_ZIP "ON")
SET(CPACK_SYSTEM_NAME "win32")
SET(CPACK_TOPLEVEL_TAG "win32")
SET(CPACK_WIX_PRODUCT_ICON "D:/Development/op3d_active/hdf-4.2.11/config/cmake_ext_mod\\hdf.ico")
SET(CPACK_WIX_ROOT "")
SET(CPACK_WIX_SIZEOF_VOID_P "4")
SET(CPACK_WIX_UNINSTALL "1")

# Configuration for component "applications"
set(CPACK_COMPONENT_APPLICATIONS_DISPLAY_NAME "HDF4 Applications")
set(CPACK_COMPONENT_APPLICATIONS_GROUP Applications)
set(CPACK_COMPONENT_APPLICATIONS_DEPENDS libraries)

# Configuration for component "libraries"
set(CPACK_COMPONENT_LIBRARIES_DISPLAY_NAME "HDF4 Libraries")
set(CPACK_COMPONENT_LIBRARIES_GROUP Runtime)

# Configuration for component "headers"
set(CPACK_COMPONENT_HEADERS_DISPLAY_NAME "HDF4 Headers")
set(CPACK_COMPONENT_HEADERS_GROUP Development)
set(CPACK_COMPONENT_HEADERS_DEPENDS libraries)

# Configuration for component "hdfdocuments"
set(CPACK_COMPONENT_HDFDOCUMENTS_DISPLAY_NAME "HDF4 Documents")
set(CPACK_COMPONENT_HDFDOCUMENTS_GROUP Documents)

# Configuration for component "configinstall"
set(CPACK_COMPONENT_CONFIGINSTALL_DISPLAY_NAME "HDF4 CMake files")
set(CPACK_COMPONENT_CONFIGINSTALL_GROUP Development)
set(CPACK_COMPONENT_CONFIGINSTALL_DEPENDS libraries)
