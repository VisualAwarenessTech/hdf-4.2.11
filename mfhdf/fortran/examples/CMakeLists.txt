cmake_minimum_required (VERSION 2.8.10)
# --------------------------------------------------------------------
# Notes: When creating examples they should be prefixed
# with "f_ex_". This allows for easier filtering of the examples.
# --------------------------------------------------------------------
PROJECT (HDF4_MFHDF_FORTRAN_EXAMPLES C CXX Fortran)

#-----------------------------------------------------------------------------
# Setup include Directories
#-----------------------------------------------------------------------------
INCLUDE_DIRECTORIES (
    ${CMAKE_Fortran_MODULE_DIRECTORY}
    ${HDF4_HDF_BINARY_DIR}
    ${HDF4_HDFSOURCE_DIR}
)
LINK_DIRECTORIES (
    ${CMAKE_Fortran_MODULE_DIRECTORY}
    ${HDF4_MFHDF_BINARY_DIR}
    ${HDF4_HDF_BINARY_DIR}
    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
)

#-----------------------------------------------------------------------------
# Define Sources
#-----------------------------------------------------------------------------
set (examples
    SD_create_sds 
    SD_write_to_sds 
    SD_write_slab 
    SD_alter_sds_values 
    SD_unlimited_sds
    SD_mv_sds_to_external 
    SD_read_from_sds 
    SD_read_subsets 
    #SD_get_info
    SD_find_sds_by_name 
    SD_set_get_dim_info 
    #SD_dimscale_vs_sds 
    SD_set_attr
    #SD_get_attr 
    SD_compress_sds 
    SD_chunking_example
)
set (skip_examples
    SD_get_info
    SD_dimscale_vs_sds 
    SD_get_attr 
)

foreach (example ${examples})
  ADD_EXECUTABLE (f_exmf_${example} ${HDF4_MFHDF_FORTRAN_EXAMPLES_SOURCE_DIR}/${example}.f)
  TARGET_NAMING (f_exmf_${example} ${LIB_TYPE})
  TARGET_FORTRAN_PROPERTIES (f_exmf_${example} " " " ")
  set_target_properties (f_exmf_${example} PROPERTIES LINKER_LANGUAGE Fortran)
  if (HDF4_BUILD_XDR_LIB)
    target_link_libraries (f_exmf_${example} ${HDF4_MF_FORTRAN_LIB_TARGET}  ${HDF4_MF_LIB_TARGET} ${HDF4_SRC_LIB_TARGET} ${LINK_LIBS} ${HDF4_MF_XDR_LIB_TARGET})
  else (HDF4_BUILD_XDR_LIB)
    target_link_libraries (f_exmf_${example} ${HDF4_MF_FORTRAN_LIB_TARGET}  ${HDF4_MF_LIB_TARGET} ${HDF4_SRC_LIB_TARGET} ${LINK_LIBS})
  endif (HDF4_BUILD_XDR_LIB)
endforeach (example ${examples})

foreach (example ${skip_examples})
  ADD_EXECUTABLE (f_exmf_${example} ${HDF4_MFHDF_FORTRAN_EXAMPLES_SOURCE_DIR}/${example}.f)
  TARGET_NAMING (f_exmf_${example} ${LIB_TYPE})
  TARGET_FORTRAN_PROPERTIES (f_exmf_${example} " " " ")
  set_target_properties (f_exmf_${example} PROPERTIES LINKER_LANGUAGE Fortran)
  if (HDF4_BUILD_XDR_LIB)
    target_link_libraries (f_exmf_${example} ${HDF4_MF_FORTRAN_LIB_TARGET}  ${HDF4_MF_LIB_TARGET} ${HDF4_SRC_LIB_TARGET} ${LINK_LIBS} ${HDF4_MF_XDR_LIB_TARGET})
  else (HDF4_BUILD_XDR_LIB)
    target_link_libraries (f_exmf_${example} ${HDF4_MF_FORTRAN_LIB_TARGET}  ${HDF4_MF_LIB_TARGET} ${HDF4_SRC_LIB_TARGET} ${LINK_LIBS})
  endif (HDF4_BUILD_XDR_LIB)
endforeach (example ${skip_examples})

if (BUILD_TESTING)
  include (CMakeTests.cmake)
endif (BUILD_TESTING)
