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
include test/CMakeFiles/thread_pool_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/thread_pool_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/thread_pool_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/thread_pool_test.dir/flags.make

test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o: test/CMakeFiles/thread_pool_test.dir/flags.make
test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o: ../test/common/thread_pool_test.cpp
test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o: test/CMakeFiles/thread_pool_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o -MF CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o.d -o CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o -c /Users/lion/project/brain/test/common/thread_pool_test.cpp

test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.i"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lion/project/brain/test/common/thread_pool_test.cpp > CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.i

test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.s"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lion/project/brain/test/common/thread_pool_test.cpp -o CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.s

# Object files for target thread_pool_test
thread_pool_test_OBJECTS = \
"CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o"

# External object files for target thread_pool_test
thread_pool_test_EXTERNAL_OBJECTS =

test/thread_pool_test: test/CMakeFiles/thread_pool_test.dir/common/thread_pool_test.cpp.o
test/thread_pool_test: test/CMakeFiles/thread_pool_test.dir/build.make
test/thread_pool_test: lib/libpeloton-test-common.a
test/thread_pool_test: test/CMakeFiles/thread_pool_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable thread_pool_test"
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thread_pool_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/thread_pool_test.dir/build: test/thread_pool_test
.PHONY : test/CMakeFiles/thread_pool_test.dir/build

test/CMakeFiles/thread_pool_test.dir/clean:
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -P CMakeFiles/thread_pool_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/thread_pool_test.dir/clean

test/CMakeFiles/thread_pool_test.dir/depend:
	cd /Users/lion/project/brain/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lion/project/brain /Users/lion/project/brain/test /Users/lion/project/brain/build /Users/lion/project/brain/build/test /Users/lion/project/brain/build/test/CMakeFiles/thread_pool_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/thread_pool_test.dir/depend

