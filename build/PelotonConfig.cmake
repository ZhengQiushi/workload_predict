# Config file for the Peloton package.
#
# After successful configuration the following variables
# will be defined:
#
#   Peloton_INCLUDE_DIRS - Peloton include directories
#   Peloton_LIBRARIES    - libraries to link against
#   Peloton_DEFINITIONS  - a list of definitions to pass to compiler
#

# Compute paths
get_filename_component(Peloton_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Peloton_INCLUDE_DIRS "/Users/lion/project/brain/src;/opt/homebrew/include;/usr/local/include;/opt/homebrew/opt/tbb@2020/include;/opt/homebrew/include/eigen3;/opt/homebrew/opt/libevent/include;/opt/homebrew/opt/jemalloc;/opt/homebrew/opt/libpqxx/include;/opt/homebrew/opt/llvm/include;/opt/homebrew/opt/libffi/include;/Users/lion/project/brain/src/include;/Users/lion/project/brain/test/include;/Users/lion/project/brain/third_party")



# Our library dependencies
if(NOT TARGET peloton AND NOT peloton_BINARY_DIR)
  include("${Peloton_CMAKE_DIR}/PelotonTargets.cmake")
endif()

# List of IMPORTED libs created by PelotonTargets.cmake
set(Peloton_LIBRARIES peloton)

# Definitions
set(Peloton_DEFINITIONS "")
