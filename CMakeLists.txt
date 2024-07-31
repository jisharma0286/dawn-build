# Dawn Builds
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

cmake_minimum_required (VERSION 3.16)

project("dawn-build" C CXX)

add_library("dawn-build" INTERFACE)

if (WIN32)
    if (CMAKE_BUILD_TYPE MATCHES Debug)
        list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/windows/debug")
    else()
        list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/windows/release")
    endif()
elseif (APPLE)
    if (CMAKE_BUILD_TYPE MATCHES Debug)
        list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/macOS/debug")
    else()
        list(APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/macOS/release")
    endif()
endif()

find_package(Dawn REQUIRED)
target_link_libraries("dawn-build" INTERFACE dawn::webgpu_dawn)