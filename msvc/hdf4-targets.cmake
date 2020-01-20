# Generated by CMake 2.8.12.2

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget xdr hdf mfhdf)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target xdr
add_library(xdr SHARED IMPORTED)

set_target_properties(xdr PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Development/op3d_active/hdf-4.2.11/msvc/xdr;D:/Development/op3d_active/hdf-4.2.11/mfhdf/xdr"
)

# Create imported target hdf
add_library(hdf SHARED IMPORTED)

set_target_properties(hdf PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Development/op3d_active/hdf-4.2.11/msvc/hdf/src;D:/Development/op3d_active/hdf-4.2.11/hdf/src"
)

# Create imported target mfhdf
add_library(mfhdf SHARED IMPORTED)

set_target_properties(mfhdf PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "D:/Development/op3d_active/hdf-4.2.11/msvc/mfhdf/libsrc;D:/Development/op3d_active/hdf-4.2.11/mfhdf/libsrc"
)

# Import target "xdr" for configuration "Debug"
set_property(TARGET xdr APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(xdr PROPERTIES
  IMPORTED_IMPLIB_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/xdr_D.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "ws2_32.lib"
  IMPORTED_LOCATION_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/xdr_D.dll"
  )

# Import target "hdf" for configuration "Debug"
set_property(TARGET hdf APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hdf PROPERTIES
  IMPORTED_IMPLIB_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/hdf_D.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "D:/Development/op3d_active/jpeg-9/vc110/Win32/Release/jpeg.lib;D:/Development/op3d_active/zlib-1.2.8/vc110/Win32/Release/zlib.lib"
  IMPORTED_LOCATION_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/hdf_D.dll"
  )

# Import target "mfhdf" for configuration "Debug"
set_property(TARGET mfhdf APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mfhdf PROPERTIES
  IMPORTED_IMPLIB_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/mfhdf_D.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "xdr;hdf"
  IMPORTED_LOCATION_DEBUG "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Debug/mfhdf_D.dll"
  )

# Import target "xdr" for configuration "Release"
set_property(TARGET xdr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(xdr PROPERTIES
  IMPORTED_IMPLIB_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/xdr.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "ws2_32.lib"
  IMPORTED_LOCATION_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/xdr.dll"
  )

# Import target "hdf" for configuration "Release"
set_property(TARGET hdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hdf PROPERTIES
  IMPORTED_IMPLIB_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/hdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "D:/Development/op3d_active/jpeg-9/vc110/Win32/Release/jpeg.lib;D:/Development/op3d_active/zlib-1.2.8/vc110/Win32/Release/zlib.lib"
  IMPORTED_LOCATION_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/hdf.dll"
  )

# Import target "mfhdf" for configuration "Release"
set_property(TARGET mfhdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(mfhdf PROPERTIES
  IMPORTED_IMPLIB_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/mfhdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "xdr;hdf"
  IMPORTED_LOCATION_RELEASE "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/Release/mfhdf.dll"
  )

# Import target "xdr" for configuration "MinSizeRel"
set_property(TARGET xdr APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(xdr PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/xdr.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_MINSIZEREL "ws2_32.lib"
  IMPORTED_LOCATION_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/xdr.dll"
  )

# Import target "hdf" for configuration "MinSizeRel"
set_property(TARGET hdf APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(hdf PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/hdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_MINSIZEREL "D:/Development/op3d_active/jpeg-9/vc110/Win32/Release/jpeg.lib;D:/Development/op3d_active/zlib-1.2.8/vc110/Win32/Release/zlib.lib"
  IMPORTED_LOCATION_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/hdf.dll"
  )

# Import target "mfhdf" for configuration "MinSizeRel"
set_property(TARGET mfhdf APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(mfhdf PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/mfhdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_MINSIZEREL "xdr;hdf"
  IMPORTED_LOCATION_MINSIZEREL "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/MinSizeRel/mfhdf.dll"
  )

# Import target "xdr" for configuration "RelWithDebInfo"
set_property(TARGET xdr APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(xdr PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/xdr.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "ws2_32.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/xdr.dll"
  )

# Import target "hdf" for configuration "RelWithDebInfo"
set_property(TARGET hdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(hdf PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/hdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "D:/Development/op3d_active/jpeg-9/vc110/Win32/Release/jpeg.lib;D:/Development/op3d_active/zlib-1.2.8/vc110/Win32/Release/zlib.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/hdf.dll"
  )

# Import target "mfhdf" for configuration "RelWithDebInfo"
set_property(TARGET mfhdf APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(mfhdf PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/mfhdf.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELWITHDEBINFO "xdr;hdf"
  IMPORTED_LOCATION_RELWITHDEBINFO "D:/Development/op3d_active/hdf-4.2.11/msvc/bin/RelWithDebInfo/mfhdf.dll"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)