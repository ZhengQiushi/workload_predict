cmake_minimum_required(VERSION 2.8.7)


# ---[ Peloton project
project(Peloton CXX C)

# include_directories(/opt/homebrew/include) # 添加头文件搜索路径
# link_directories(/opt/homebrew/lib) # 添加库文件搜索路径

# ---[ CTest
include(CTest)

# ---[ Peloton version
set(PELOTON_TARGET_VERSION "0.0.5" CACHE STRING "Peloton logical version")
set(PELOTON_TARGET_SOVERSION "0.0.5" CACHE STRING "Peloton soname version")
add_definitions(-DPELOTON_VERSION=${PELOTON_TARGET_VERSION})

# --[ Output directory
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# ---[ Using cmake scripts and modules
# list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/Modules)

include(cmake/Utils.cmake)
include(cmake/Targets.cmake)

# ---[ Dependencies
include(cmake/Dependencies.cmake)

# ---[ C++14 Flags
include(CheckCXXCompilerFlag)
check_cxx_compiler_flag("-std=c++11" COMPILER_SUPPORTS_CXX11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -fPIC -Wall -O0 -g -ggdb3")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -D__PELOTONFILE__='\"$(subst ${CMAKE_SOURCE_DIR}/,,$(abspath $<))\"'")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0")

# ---[ Includes
set(Peloton_SRC_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/src/include)
set(Peloton_TEST_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/test/include)
set(Peloton_THIRD_PARTY_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/third_party)
include_directories(${Peloton_SRC_INCLUDE_DIR} ${Peloton_TEST_INCLUDE_DIR} ${Peloton_THIRD_PARTY_INCLUDE_DIR} ${PROJECT_BINARY_DIR})
include_directories(BEFORE src) # This is needed for gtest.

# ---[ Subdirectoriescmak
add_subdirectory(src)
add_subdirectory(test)

