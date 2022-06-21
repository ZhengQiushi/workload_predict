# This list is required for static linking and exported to PelotonConfig.cmake
set(Peloton_LINKER_LIBS "")

# GCC 7 requires libatomic for cmpxchg16b instructions (used by libpg_query)
if(CMAKE_COMPILER_IS_GNUCXX AND
    (CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 7.0 OR CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 7.0))
      list(APPEND Peloton_LINKER_LIBS "-latomic")
endif()

# ---[ Boost
find_package(Boost 1.46 REQUIRED COMPONENTS system filesystem thread)
include_directories(SYSTEM ${Boost_INCLUDE_DIR})
list(APPEND Peloton_LINKER_LIBS ${Boost_LIBRARIES})

# ---[ Threads
find_package(Threads REQUIRED)
list(APPEND Peloton_LINKER_LIBS ${CMAKE_THREAD_LIBS_INIT})

# ---[ Google-test 
set(GMOCK_INCLUDE_DIRS "/usr/local/include")
include_directories(SYSTEM ${GMOCK_INCLUDE_DIRS})


# ---[ Google-gflags
find_package(gflags REQUIRED)
include_directories(SYSTEM ${GFLAGS_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${GFLAGS_LIBRARIES})

# ---[ intel tbb
set(TBB_INCLUDE_DIRS "/opt/homebrew/opt/tbb@2020/include")
set(TBB_LIBRARIES "/opt/homebrew/opt/tbb@2020/lib/libtbb.a")
# find_package(TBB REQUIRED)
include_directories(SYSTEM ${TBB_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${TBB_LIBRARIES})

# ---[ Cap'nProto
# include("cmake/External/capnproto.cmake")

# set(CAPNP_INCLUDE_DIRS "/usr/local/include/capnp")
# set(CAPNP_LIBRARIES "/usr/local/lib")

# include_directories(SYSTEM ${CAPNP_INCLUDE_DIRS})
# list(APPEND Peloton_LINKER_LIBS ${CAPNP_LIBRARIES})
# # To include the CAPNP_GENERATE_CPP function from the capnproto installation
# include(cmake/CapnProtoMacros.cmake)

# ---[ Google-protobuf
# include(cmake/ProtoBuf.cmake)

# --[ tensorflow
# find_library(TFlowC
#         NAMES tensorflow
#         PATHS "/usr/local/lib")
set(TFlowC, "/usr/local/lib/libtensorflow.so")
list(APPEND Peloton_LINKER_LIBS ${TFlowC})

# --[ Eigen3
find_package(Eigen3 REQUIRED)
include_directories(SYSTEM ${EIGEN3_INCLUDE_DIR})

# ---[ Libevent
# find_package(Libevent REQUIRED)
set(LIBEVENT_INCLUDE_DIRS "/opt/homebrew/opt/libevent/include")
set(LIBEVENT_LIBRARIES "/opt/homebrew/opt/libevent/lib/libevent.a")
set(LIBEVENT_PTHREAD_LIBRARIES "/opt/homebrew/opt/libevent/lib/libevent_pthreads.a")

include_directories(SYSTEM ${LIBEVENT_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${LIBEVENT_LIBRARIES})
list(APPEND Peloton_LINKER_LIBS ${LIBEVENT_PTHREAD_LIBRARIES})

# ---[ Doxygen
if(BUILD_docs)
  find_package(Doxygen)
endif()

# ---[ Sanitizers
if("${CMAKE_BUILD_TYPE}" STREQUAL "Debug")
   include(Sanitizer)
#  list(APPEND Peloton_LINKER_LIBS "-ltsan")
endif()

# NOTE: link jemalloc only when building binaries.
# ---[ Jemalloc
# find_package(jemalloc)
set(JEMALLOC_INCLUDE_DIR "/opt/homebrew/opt/jemalloc")
include_directories(SYSTEM ${JEMALLOC_INCLUDE_DIR})

# --[ PQXX
# find_package(PQXX REQUIRED)
set(PQXX_INCLUDE_DIRECTORIES "/opt/homebrew/opt/libpqxx/include")
set(PQXX_LIBRARIES "/opt/homebrew/opt/libpqxx/lib/libpqxx.a")
include_directories(SYSTEM ${PQXX_INCLUDE_DIRECTORIES})
list(APPEND Peloton_LINKER_LIBS ${PQXX_LIBRARIES})

# --[ Open SSL
list(APPEND Peloton_LINKER_LIBS "-lssl -lcrypto")

# --[ LLVM 3.7+
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
if (${LLVM_PACKAGE_VERSION} VERSION_LESS "3.7")
    message( FATAL_ERROR "LLVM 3.7 or newer is required." )
endif()
llvm_map_components_to_libnames(LLVM_LIBRARIES core mcjit nativecodegen native)
include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${LLVM_LIBRARIES})

# --[ FFI
# find_package(Libffi)
set(LIBFFI_INCLUDE_DIRS "/opt/homebrew/opt/libffi/include")
set(LIBFFI_LIBRARIES "/opt/homebrew/opt/libffi/lib/libffi.a")
include_directories(SYSTEM ${LIBFFI_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${LIBFFI_LIBRARIES})

# --[ IWYU

# Generate clang compilation database
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(PythonInterp REQUIRED)
find_program(iwyu_tool_path NAMES "${PROJECT_SOURCE_DIR}/third_party/iwyu/iwyu_tool.py")

add_custom_target(iwyu
    COMMAND "${PYTHON_EXECUTABLE}" "${iwyu_tool_path}" -p "${CMAKE_BINARY_DIR}"
    COMMENT "Running include-what-you-use tool"
    VERBATIM
)
