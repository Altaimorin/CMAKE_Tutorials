#initialization
message("Start CMAKE initilization")
cmake_minimum_required(VERSION 2.8)
project(Part1Project)

#compilation
include_directories("${CMAKE_SOURCE_DIR}/include")
add_subdirectory("${CMAKE_SOURCE_DIR}/include")
add_executable(part1 Main.cpp)
target_link_libraries(part1 print)
set_target_properties(part1 PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/bin")

#install part1 and print
set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install/")
install(TARGETS part1 DESTINATION "${CMAKE_INSTALL_PREFIX}bin")
install(TARGETS print DESTINATION "${CMAKE_INSTALL_PREFIX}lib")
