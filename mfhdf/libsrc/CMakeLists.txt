cmake_minimum_required (VERSION 2.8.10)
PROJECT (HDF4_MFHDF_LIBSRC C CXX)

#-----------------------------------------------------------------------------
# Generate the netcdf.h file containing user settings needed by compilation
#-----------------------------------------------------------------------------
if (WIN32)
  set (H4_WINDOWS_INCLUDE_FILE "#include <hdfi.h>")
  set (NETCDF_EXTERN HDFLIBAPI)
else (WIN32)
  set (NETCDF_EXTERN extern)
endif (WIN32)

set (NC_OLD_FILLVALUES 0)

set (HDF4_MFHDF_LIBSRC_CSRCS
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/array.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/attr.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/cdf.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/dim.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/file.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/hdfsds.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/iarray.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/error.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/globdef.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/mfdatainfo.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/mfsd.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/nssdc.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/putget.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/putgetg.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/sharray.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/string.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/var.c
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/xdrposix.c
)

set (HDF4_MFHDF_LIBSRC_CHDRS
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/alloc.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/error.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/local_nc.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/mfhdf.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/mfhdfi.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/mfdatainfo.h
    ${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/hdf2netcdf.h
)

if (HDF4_ENABLE_NETCDF)
  configure_file (${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/netcdf.h.in ${HDF4_BINARY_DIR}/netcdf.h)
  set (HDF4_MFHDF_LIBSRC_XCHDRS ${HDF4_BINARY_DIR}/netcdf.h)
else (HDF4_ENABLE_NETCDF)
  configure_file (${HDF4_MFHDF_LIBSRC_SOURCE_DIR}/netcdf.h.in ${HDF4_BINARY_DIR}/hdf4_netcdf.h)
  set (HDF4_MFHDF_LIBSRC_XCHDRS ${HDF4_BINARY_DIR}/hdf4_netcdf.h)
endif (HDF4_ENABLE_NETCDF)

if (CYGWIN)
  INCLUDE_DIRECTORIES (/usr/include/tirpc)
else (CYGWIN)
  INCLUDE_DIRECTORIES (/usr/include/rpc)
endif (CYGWIN)

INCLUDE_DIRECTORIES (${HDF4_HDFSOURCE_DIR})
INCLUDE_DIRECTORIES (${HDF4_MFHDFSOURCE_DIR})

add_definitions (-DHDF)

if (WIN32)
  add_definitions (-DDOS_FS -DSWAP)
endif (WIN32)

add_library (${HDF4_MF_LIB_TARGET} ${LIB_TYPE} ${HDF4_MFHDF_LIBSRC_CSRCS} ${HDF4_MFHDF_LIBSRC_CHDRS})
if (HDF4_BUILD_XDR_LIB)
  if (WIN32)
    add_definitions (-DNO_SYS_XDR_INC)
  endif (WIN32)
  INCLUDE_DIRECTORIES (${HDF4_MFHDF_XDR_DIR})
  target_link_libraries (${HDF4_MF_LIB_TARGET} ${HDF4_MF_XDR_LIB_TARGET})
endif (HDF4_BUILD_XDR_LIB)
TARGET_C_PROPERTIES (${HDF4_MF_LIB_TARGET} " " " ")
target_link_libraries (${HDF4_MF_LIB_TARGET} ${HDF4_SRC_LIB_TARGET})
set_global_variable (HDF4_LIBRARIES_TO_EXPORT "${HDF4_LIBRARIES_TO_EXPORT};${HDF4_MF_LIB_TARGET}")
H4_SET_LIB_OPTIONS (${HDF4_MF_LIB_TARGET} ${HDF4_MF_LIB_NAME} ${LIB_TYPE})

#-----------------------------------------------------------------------------
# Add file(s) to CMake Install
#-----------------------------------------------------------------------------
install (
    FILES
        ${HDF4_MFHDF_LIBSRC_CHDRS} ${HDF4_MFHDF_LIBSRC_XCHDRS}
    DESTINATION
        ${HDF4_INSTALL_INCLUDE_DIR}
    COMPONENT
        headers
)

#-----------------------------------------------------------------------------
# Add library to CMake Install : Installs lib and cmake config info
#-----------------------------------------------------------------------------
if (BUILD_SHARED_LIBS)
  INSTALL_TARGET_PDB (${HDF4_MF_LIB_TARGET} ${HDF4_INSTALL_LIB_DIR} libraries)
endif (BUILD_SHARED_LIBS)
  
install (
    TARGETS 
        ${HDF4_MF_LIB_TARGET}
    EXPORT 
        ${HDF4_EXPORTED_TARGETS}
    LIBRARY DESTINATION ${HDF4_INSTALL_LIB_DIR} COMPONENT libraries 
    ARCHIVE DESTINATION ${HDF4_INSTALL_LIB_DIR} COMPONENT libraries
    RUNTIME DESTINATION ${HDF4_INSTALL_BIN_DIR} COMPONENT libraries
)
