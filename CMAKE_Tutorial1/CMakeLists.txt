message("Start CMAKE initilization")
cmake_minimum_required(VERSION 2.8)
project(Part1Project)

add_executable(part1 Main.cpp)
set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/install/")
set(BINDIR "${CMAKE_INSTALL_PREFIX}bin")
install(TARGETS part1 DESTINATION ${BINDIR})

