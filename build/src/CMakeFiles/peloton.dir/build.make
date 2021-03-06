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
include src/CMakeFiles/peloton.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/peloton.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/peloton.dir/flags.make

src/CMakeFiles/peloton.dir/brain/cluster.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/cluster.cpp.o: ../src/brain/cluster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/peloton.dir/brain/cluster.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/cluster.cpp.o -c /home/zqs/project/workload_predict/src/brain/cluster.cpp

src/CMakeFiles/peloton.dir/brain/cluster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/cluster.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/cluster.cpp > CMakeFiles/peloton.dir/brain/cluster.cpp.i

src/CMakeFiles/peloton.dir/brain/cluster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/cluster.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/cluster.cpp -o CMakeFiles/peloton.dir/brain/cluster.cpp.s

src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.o: ../src/brain/kd_tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/kd_tree.cpp.o -c /home/zqs/project/workload_predict/src/brain/kd_tree.cpp

src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/kd_tree.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/kd_tree.cpp > CMakeFiles/peloton.dir/brain/kd_tree.cpp.i

src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/kd_tree.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/kd_tree.cpp -o CMakeFiles/peloton.dir/brain/kd_tree.cpp.s

src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o: ../src/brain/query_clusterer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o -c /home/zqs/project/workload_predict/src/brain/query_clusterer.cpp

src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/query_clusterer.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/query_clusterer.cpp > CMakeFiles/peloton.dir/brain/query_clusterer.cpp.i

src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/query_clusterer.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/query_clusterer.cpp -o CMakeFiles/peloton.dir/brain/query_clusterer.cpp.s

src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o: ../src/brain/selectivity/augmented_nn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o -c /home/zqs/project/workload_predict/src/brain/selectivity/augmented_nn.cpp

src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/selectivity/augmented_nn.cpp > CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.i

src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/selectivity/augmented_nn.cpp -o CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.s

src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o: ../src/brain/selectivity/selectivity_defaults.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o -c /home/zqs/project/workload_predict/src/brain/selectivity/selectivity_defaults.cpp

src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/selectivity/selectivity_defaults.cpp > CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.i

src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/selectivity/selectivity_defaults.cpp -o CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.s

src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o: ../src/brain/util/eigen_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/eigen_util.cpp

src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/eigen_util.cpp > CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.i

src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/eigen_util.cpp -o CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.s

src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.o: ../src/brain/util/model_util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/model_util.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/model_util.cpp

src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/model_util.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/model_util.cpp > CMakeFiles/peloton.dir/brain/util/model_util.cpp.i

src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/model_util.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/model_util.cpp -o CMakeFiles/peloton.dir/brain/util/model_util.cpp.s

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o: ../src/brain/util/tf_session_entity/tf_session_entity.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity.cpp

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity.cpp > CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.i

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity.cpp -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.s

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o: ../src/brain/util/tf_session_entity/tf_session_entity_input.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_input.cpp

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_input.cpp > CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.i

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_input.cpp -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.s

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o: ../src/brain/util/tf_session_entity/tf_session_entity_io.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_io.cpp

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_io.cpp > CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.i

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_io.cpp -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.s

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o: ../src/brain/util/tf_session_entity/tf_session_entity_output.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o -c /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_output.cpp

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_output.cpp > CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.i

src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/util/tf_session_entity/tf_session_entity_output.cpp -o CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o: ../src/brain/workload/base_tf.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/base_tf.cpp

src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/base_tf.cpp > CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/base_tf.cpp -o CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o: ../src/brain/workload/ensemble_model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/ensemble_model.cpp

src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/ensemble_model.cpp > CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/ensemble_model.cpp -o CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o: ../src/brain/workload/kernel_model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/kernel_model.cpp

src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/kernel_model.cpp > CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/kernel_model.cpp -o CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o: ../src/brain/workload/linear_model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/linear_model.cpp

src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/linear_model.cpp > CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/linear_model.cpp -o CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o: ../src/brain/workload/lstm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/lstm.cpp

src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/lstm.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/lstm.cpp > CMakeFiles/peloton.dir/brain/workload/lstm.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/lstm.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/lstm.cpp -o CMakeFiles/peloton.dir/brain/workload/lstm.cpp.s

src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o: ../src/brain/workload/workload_defaults.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o -c /home/zqs/project/workload_predict/src/brain/workload/workload_defaults.cpp

src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/brain/workload/workload_defaults.cpp > CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.i

src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/brain/workload/workload_defaults.cpp -o CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.s

src/CMakeFiles/peloton.dir/common/bitmap.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/common/bitmap.cpp.o: ../src/common/bitmap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object src/CMakeFiles/peloton.dir/common/bitmap.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/common/bitmap.cpp.o -c /home/zqs/project/workload_predict/src/common/bitmap.cpp

src/CMakeFiles/peloton.dir/common/bitmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/common/bitmap.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/common/bitmap.cpp > CMakeFiles/peloton.dir/common/bitmap.cpp.i

src/CMakeFiles/peloton.dir/common/bitmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/common/bitmap.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/common/bitmap.cpp -o CMakeFiles/peloton.dir/common/bitmap.cpp.s

src/CMakeFiles/peloton.dir/main/main.cpp.o: src/CMakeFiles/peloton.dir/flags.make
src/CMakeFiles/peloton.dir/main/main.cpp.o: ../src/main/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object src/CMakeFiles/peloton.dir/main/main.cpp.o"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/peloton.dir/main/main.cpp.o -c /home/zqs/project/workload_predict/src/main/main.cpp

src/CMakeFiles/peloton.dir/main/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/peloton.dir/main/main.cpp.i"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zqs/project/workload_predict/src/main/main.cpp > CMakeFiles/peloton.dir/main/main.cpp.i

src/CMakeFiles/peloton.dir/main/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/peloton.dir/main/main.cpp.s"
	cd /home/zqs/project/workload_predict/build/src && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zqs/project/workload_predict/src/main/main.cpp -o CMakeFiles/peloton.dir/main/main.cpp.s

# Object files for target peloton
peloton_OBJECTS = \
"CMakeFiles/peloton.dir/brain/cluster.cpp.o" \
"CMakeFiles/peloton.dir/brain/kd_tree.cpp.o" \
"CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o" \
"CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o" \
"CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/model_util.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o" \
"CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o" \
"CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o" \
"CMakeFiles/peloton.dir/common/bitmap.cpp.o" \
"CMakeFiles/peloton.dir/main/main.cpp.o"

# External object files for target peloton
peloton_EXTERNAL_OBJECTS =

lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/cluster.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/kd_tree.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/query_clusterer.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/selectivity/augmented_nn.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/selectivity/selectivity_defaults.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/eigen_util.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/model_util.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_input.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_io.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/util/tf_session_entity/tf_session_entity_output.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/base_tf.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/ensemble_model.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/kernel_model.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/linear_model.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/lstm.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/brain/workload/workload_defaults.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/common/bitmap.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/main/main.cpp.o
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/build.make
lib/libpeloton.so.0.0.5: /usr/local/boost/lib/libboost_system.so
lib/libpeloton.so.0.0.5: /usr/local/boost/lib/libboost_filesystem.so
lib/libpeloton.so.0.0.5: /usr/local/lib64/libgmock.a
lib/libpeloton.so.0.0.5: /usr/local/lib64/libgtest.a
lib/libpeloton.so.0.0.5: /usr/local/lib/libgflags.so.2.2.0
lib/libpeloton.so.0.0.5: /usr/local/lib/libglog.a
lib/libpeloton.so.0.0.5: /usr/local/lib/libtensorflow_cc.so
lib/libpeloton.so.0.0.5: /usr/local/lib/libtensorflow_framework.so
lib/libpeloton.so.0.0.5: /usr/local/lib/libevent.a
lib/libpeloton.so.0.0.5: /usr/local/lib/libevent_pthreads.a
lib/libpeloton.so.0.0.5: src/CMakeFiles/peloton.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zqs/project/workload_predict/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Linking CXX shared library ../lib/libpeloton.so"
	cd /home/zqs/project/workload_predict/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/peloton.dir/link.txt --verbose=$(VERBOSE)
	cd /home/zqs/project/workload_predict/build/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libpeloton.so.0.0.5 ../lib/libpeloton.so.0.0.5 ../lib/libpeloton.so

lib/libpeloton.so: lib/libpeloton.so.0.0.5
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libpeloton.so

# Rule to build all files generated by this target.
src/CMakeFiles/peloton.dir/build: lib/libpeloton.so

.PHONY : src/CMakeFiles/peloton.dir/build

src/CMakeFiles/peloton.dir/clean:
	cd /home/zqs/project/workload_predict/build/src && $(CMAKE_COMMAND) -P CMakeFiles/peloton.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/peloton.dir/clean

src/CMakeFiles/peloton.dir/depend:
	cd /home/zqs/project/workload_predict/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zqs/project/workload_predict /home/zqs/project/workload_predict/src /home/zqs/project/workload_predict/build /home/zqs/project/workload_predict/build/src /home/zqs/project/workload_predict/build/src/CMakeFiles/peloton.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/peloton.dir/depend

