set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR}/cmake)

# find Print package: run FindPRINT.cmake in ${CMAKE_MODULE_PATH}
find_package(PRINT REQUIRED)

# ${PRINT_FOUND} is generated after running FindPRINT.cmake
if(NOT PRINT_FOUND)
    message(FATAL_ERROR "Package PRINT from proj1 not found")
endif(NOT PRINT_FOUND)

# ${PRINT_INCLUDE_DIR} is also generated after running FindPRINT.cmake
include_directories(${PRINT_INCLUDE_DIR})
message("PRINT_INCLUDE_DIRS is ${PRINT_INCLUDE_DIR}")

# ${PRINT_LIBRARIES} is created inside FindPRINT.cmake
add_executable(proj2 Main.cpp)
target_link_libraries(proj2 ${PRINT_LIBRARY})
set_target_properties(proj2 PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)


