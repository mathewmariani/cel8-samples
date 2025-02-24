#
# project: cel8-samples
#
cmake_minimum_required(VERSION 3.5)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED TRUE)

set(CMAKE_OSX_DEPLOYMENT_TARGET "10.15" CACHE STRING "")

set(THIRDPARTY_DIR libs)

project(cel8-samples)

# macros
include("cmake/cel8.cmake")
include("cmake/sokol.cmake")

include_directories(${THIRDPARTY_DIR})
add_subdirectory(samples)