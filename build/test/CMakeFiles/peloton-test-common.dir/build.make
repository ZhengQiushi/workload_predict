# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lion/project/brain

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lion/project/brain/build

# Include any dependencies generated for this target.
include test/CMakeFiles/peloton-test-common.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/peloton-test-common.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/peloton-test-common.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/peloton-test-common.dir/flags.make

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/flags.make
test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o: ../test/brain/testing_forecast_util.cpp
test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o -MF CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o.d -o CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.o -c /Users/lion/project/brain/test/brain/testing_forecast_util.cpp

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lion/project/brain/test/brain/testing_forecast_util.cpp > CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.i

test/CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lion/project/brain/test/brain/testing_forecast_util.cpp -o CMakeFiles/peloton-test-common.dir/brain/testing_forecast_util.cpp.s

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/flags.make
test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o: ../test/brain/testing_augmented_nn_util.cpp
test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o: test/CMakeFiles/peloton-test-common.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o -MF CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o.d -o CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.o -c /Users/lion/project/brain/test/brain/testing_augmented_nn_util.cpp

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lion/project/brain/test/brain/testing_augmented_nn_util.cpp > CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.i

test/CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lion/project/brain/test/brain/testing_augmented_nn_util.cpp -o CMakeFiles/peloton-test-common.dir/brain/testing_augmented_nn_util.cpp.s

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
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ../lib/libpeloton-test-common.a"
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -P CMakeFiles/peloton-test-common.dir/cmake_clean_target.cmake
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/peloton-test-common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/peloton-test-common.dir/build: lib/libpeloton-test-common.a
.PHONY : test/CMakeFiles/peloton-test-common.dir/build

test/CMakeFiles/peloton-test-common.dir/clean:
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -P CMakeFiles/peloton-test-common.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/peloton-test-common.dir/clean

test/CMakeFiles/peloton-test-common.dir/depend:
	cd /Users/lion/project/brain/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lion/project/brain /Users/lion/project/brain/test /Users/lion/project/brain/build /Users/lion/project/brain/build/test /Users/lion/project/brain/build/test/CMakeFiles/peloton-test-common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/peloton-test-common.dir/depend

