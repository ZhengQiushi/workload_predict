# This list is required for static linking and exported to PelotonConfig.cmake
set(Peloton_LINKER_LIBS "")

# GCC 7 requires libatomic for cmpxchg16b instructions (used by libpg_query)
if(CMAKE_COMPILER_IS_GNUCXX AND
    (CMAKE_CXX_COMPILER_VERSION VERSION_EQUAL 7.0 OR CMAKE_CXX_COMPILER_VERSION VERSION_GREATER 7.0))
      list(APPEND Peloton_LINKER_LIBS "-latomic")
endif()

# ---[ Boost
# find_package(Boost REQUIRED COMPONENTS system filesystem thread)
set(Boost_INCLUDE_DIR "/usr/local/boost/include/")

set(Boost_FILESYSTEM_LIBRARIES "/usr/local/boost/lib/libboost_system.so")
set(Boost_SYSTEM_LIBRARIES "/usr/local/boost/lib/libboost_filesystem.so")

include_directories(SYSTEM ${Boost_INCLUDE_DIR})
list(APPEND Peloton_LINKER_LIBS ${Boost_FILESYSTEM_LIBRARIES})
list(APPEND Peloton_LINKER_LIBS ${Boost_SYSTEM_LIBRARIES})

# ---[ Threads
find_package(Threads REQUIRED)
list(APPEND Peloton_LINKER_LIBS ${CMAKE_THREAD_LIBS_INIT})

# ---[ Google-test 
set(GMOCK_INCLUDE_DIRS "/usr/local/include")
include_directories(SYSTEM ${GMOCK_INCLUDE_DIRS})
set(GMOCK_LIBRARIES "/usr/local/lib64/libgmock.a")
set(GTEST_LIBRARIES "/usr/local/lib64/libgtest.a")

list(APPEND Peloton_LINKER_LIBS ${GMOCK_LIBRARIES})
list(APPEND Peloton_LINKER_LIBS ${GTEST_LIBRARIES})

# ---[ Google-gflags
find_package(gflags REQUIRED)
include_directories(SYSTEM ${GFLAGS_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${GFLAGS_LIBRARIES})


# include_directories(SYSTEM ${GLOG_INCLUDE_DIRS})
set(GLOG_LIBRARIES "/usr/local/lib/libglog.a")
list(APPEND Peloton_LINKER_LIBS ${GLOG_LIBRARIES})

# set( 
# set(gflags "/usr/local/lib/libgflags.a")

# --[ tensorflow
set(TFlowC_LIBRARIES "/usr/local/lib/libtensorflow_cc.so")
set(TFlowC_FRAMEWORK_LIBRARIES "/usr/local/lib/libtensorflow_framework.so")

list(APPEND Peloton_LINKER_LIBS ${TFlowC_LIBRARIES})
list(APPEND Peloton_LINKER_LIBS ${TFlowC_FRAMEWORK_LIBRARIES})

# --[ Eigen3
find_package(Eigen3 REQUIRED)
include_directories(SYSTEM ${EIGEN3_INCLUDE_DIR})

# ---[ Libevent
set(LIBEVENT_LIBRARIES "/usr/local/lib/libevent.a")
set(LIBEVENT_PTHREAD_LIBRARIES "/usr/local/lib/libevent_pthreads.a")

include_directories(SYSTEM ${LIBEVENT_INCLUDE_DIRS})
list(APPEND Peloton_LINKER_LIBS ${LIBEVENT_LIBRARIES})
list(APPEND Peloton_LINKER_LIBS ${LIBEVENT_PTHREAD_LIBRARIES})
