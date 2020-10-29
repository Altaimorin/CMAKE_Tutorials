# Find the Print library
# Once done this will define:
# PRINT_FOUND - If system found Print library
# PRINT_INCLUDE_DIR - The include directories of the header file of PRINT
# PRINT_LIBRARY - The libraries file which containes the PRINT FUNCTION

set(PRINT_ROOT_DIR ${CMAKE_SOURCE_DIR}/../proj1)

find_path(PRINT_INCLUDE_DIR
    NAMES include/print.hpp
    PATHS ${PRINT_ROOT_DIR}
    DOC "The PRINT include directory"
)

find_library(PRINT_LIBRARY
    NAMES print
    PATHS ${PRINT_ROOT_DIR}/lib
    DOC "The PRINT library"
)

# Configure the package PRINT: 
# If ${PRINT_INCLUDE_DIR} and ${PRINT_LIBRARY} are valid, ${PRINT_FOUND} is TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(PRINT DEFAULT_MSG PRINT_INCLUDE_DIR PRINT_LIBRARY)


