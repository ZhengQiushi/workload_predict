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
include test/CMakeFiles/query_clusterer_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/query_clusterer_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/query_clusterer_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/query_clusterer_test.dir/flags.make

test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o: test/CMakeFiles/query_clusterer_test.dir/flags.make
test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o: ../test/brain/query_clusterer_test.cpp
test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o: test/CMakeFiles/query_clusterer_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o -MF CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o.d -o CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o -c /Users/lion/project/brain/test/brain/query_clusterer_test.cpp

test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.i"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lion/project/brain/test/brain/query_clusterer_test.cpp > CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.i

test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.s"
	cd /Users/lion/project/brain/build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lion/project/brain/test/brain/query_clusterer_test.cpp -o CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.s

# Object files for target query_clusterer_test
query_clusterer_test_OBJECTS = \
"CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o"

# External object files for target query_clusterer_test
query_clusterer_test_EXTERNAL_OBJECTS =

test/query_clusterer_test: test/CMakeFiles/query_clusterer_test.dir/brain/query_clusterer_test.cpp.o
test/query_clusterer_test: test/CMakeFiles/query_clusterer_test.dir/build.make
test/query_clusterer_test: lib/libpeloton.0.0.5.dylib
test/query_clusterer_test: lib/libpeloton-test-common.a
test/query_clusterer_test: /opt/homebrew/lib/libboost_system-mt.dylib
test/query_clusterer_test: /opt/homebrew/lib/libboost_filesystem-mt.dylib
test/query_clusterer_test: /opt/homebrew/lib/libboost_atomic-mt.dylib
test/query_clusterer_test: /opt/homebrew/lib/libboost_thread-mt.dylib
test/query_clusterer_test: /opt/homebrew/lib/libgflags.2.2.2.dylib
test/query_clusterer_test: /opt/homebrew/opt/tbb@2020/lib/libtbb.a
test/query_clusterer_test: /usr/local/lib/libtensorflow.so
test/query_clusterer_test: /opt/homebrew/opt/libevent/lib/libevent.a
test/query_clusterer_test: /opt/homebrew/opt/libevent/lib/libevent_pthreads.a
test/query_clusterer_test: /opt/homebrew/opt/libpqxx/lib/libpqxx.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMMCJIT.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMExecutionEngine.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMOrcTargetProcess.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMOrcShared.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMRuntimeDyld.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64CodeGen.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAsmPrinter.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMDebugInfoDWARF.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMDebugInfoMSF.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMGlobalISel.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMSelectionDAG.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMCodeGen.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMTarget.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMScalarOpts.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAggressiveInstCombine.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMInstCombine.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMBitWriter.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMTransformUtils.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAnalysis.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMObject.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMBitReader.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMTextAPI.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMProfileData.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMCFGuard.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMCore.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMRemarks.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMBitstreamReader.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64AsmParser.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMMCParser.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64Disassembler.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64Desc.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64Info.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMMCDisassembler.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMMC.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMBinaryFormat.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMDebugInfoCodeView.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMAArch64Utils.a
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMSupport.a
test/query_clusterer_test: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/query_clusterer_test: /Library/Developer/CommandLineTools/SDKs/MacOSX12.sdk/usr/lib/libcurses.tbd
test/query_clusterer_test: /opt/homebrew/opt/llvm/lib/libLLVMDemangle.a
test/query_clusterer_test: /opt/homebrew/opt/libffi/lib/libffi.a
test/query_clusterer_test: test/CMakeFiles/query_clusterer_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lion/project/brain/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable query_clusterer_test"
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/query_clusterer_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/query_clusterer_test.dir/build: test/query_clusterer_test
.PHONY : test/CMakeFiles/query_clusterer_test.dir/build

test/CMakeFiles/query_clusterer_test.dir/clean:
	cd /Users/lion/project/brain/build/test && $(CMAKE_COMMAND) -P CMakeFiles/query_clusterer_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/query_clusterer_test.dir/clean

test/CMakeFiles/query_clusterer_test.dir/depend:
	cd /Users/lion/project/brain/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lion/project/brain /Users/lion/project/brain/test /Users/lion/project/brain/build /Users/lion/project/brain/build/test /Users/lion/project/brain/build/test/CMakeFiles/query_clusterer_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/query_clusterer_test.dir/depend

