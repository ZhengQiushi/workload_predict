# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zqs/project/workload_predict

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zqs/project/workload_predict/build

# Include any dependencies generated for this target.
include test/CMakeFiles/peloton-test-common.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/peloton-test-common.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/peloton-test-common.dir/flags.make

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/flags.make
test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o: ../test/brain/testing_forecast_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o -c /home/zqs/project/workload_predict/test/brain/testing_forecast_util.cpp

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/test/brain/testing_forecast_util.cpp > CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/test/brain/testing_forecast_util.cpp -o CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/flags.make
test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o: ../test/brain/testing_augmented_nn_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o -c /home/zqs/project/workload_predict/test/brain/testing_augmented_nn_util.cpp

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/test/brain/testing_augmented_nn_util.cpp > CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s"
	cd /home/zqs/project/workload_predict/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/test/brain/testing_augmented_nn_util.cpp -o CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s

# Object files for target peloton-test-common
peloton__test__common_OBJECTS = \
"CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o" \
"CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o"

# External object files for target peloton-test-common
peloton__test__common_EXTERNAL_OBJECTS =

lib/libpeloton-test-common.a: test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o
lib/libpeloton-test-common.a: test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o
lib/libpeloton-test-common.a: test/CMakeFiles/peloton-test-common.dir/build.make
lib/libpeloton-test-common.a: test/CMakeFiles/peloton-test-common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../lib/libpeloton-test-common.a"
	cd /home/zqs/project/workload_predict/build/test && $(CMAKE_COMMAND) -P CMakeFiles/peloton-test-common.dir/cmake_clean_target.cmake
	cd /home/zqs/project/workload_predict/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/peloton-test-common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/peloton-test-common.dir/build: lib/libpeloton-test-common.a

.PHONY : test/CMakeFiles/peloton-test-common.dir/build

test/CMakeFiles/peloton-test-common.dir/clean:
	cd /home/zqs/project/workload_predict/build/test && $(CMAKE_COMMAND) -P CMakeFiles/peloton-test-common.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/peloton-test-common.dir/clean

test/CMakeFiles/peloton-test-common.dir/depend:
	cd /home/zqs/project/workload_predict/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zqs/project/workload_predict /home/zqs/project/workload_predict/test /home/zqs/project/workload_predict/build /home/zqs/project/workload_predict/build/test /home/zqs/project/workload_predict/build/test/CMakeFiles/peloton-test-common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/peloton-test-common.dir/depend

