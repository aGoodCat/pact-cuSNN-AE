# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /snap/cmake/1147/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1147/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/src/common.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/common.cpp.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/common.cpp
CMakeFiles/test.dir/src/common.cpp.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/src/common.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test.dir/src/common.cpp.o -MF CMakeFiles/test.dir/src/common.cpp.o.d -o CMakeFiles/test.dir/src/common.cpp.o -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/common.cpp

CMakeFiles/test.dir/src/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/common.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/common.cpp > CMakeFiles/test.dir/src/common.cpp.i

CMakeFiles/test.dir/src/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/common.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/common.cpp -o CMakeFiles/test.dir/src/common.cpp.s

CMakeFiles/test.dir/src/Add.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Add.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Add.cu
CMakeFiles/test.dir/src/Add.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object CMakeFiles/test.dir/src/Add.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Add.cu -o CMakeFiles/test.dir/src/Add.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Add.cu -MT CMakeFiles/test.dir/src/Add.cu.o -o CMakeFiles/test.dir/src/Add.cu.o.d

CMakeFiles/test.dir/src/Add.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Add.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Add.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Add.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/BatchNorm.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/BatchNorm.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/BatchNorm.cu
CMakeFiles/test.dir/src/BatchNorm.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object CMakeFiles/test.dir/src/BatchNorm.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/BatchNorm.cu -o CMakeFiles/test.dir/src/BatchNorm.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/BatchNorm.cu -MT CMakeFiles/test.dir/src/BatchNorm.cu.o -o CMakeFiles/test.dir/src/BatchNorm.cu.o.d

CMakeFiles/test.dir/src/BatchNorm.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/BatchNorm.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/BatchNorm.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/BatchNorm.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Conv.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Conv.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Conv.cu
CMakeFiles/test.dir/src/Conv.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CUDA object CMakeFiles/test.dir/src/Conv.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Conv.cu -o CMakeFiles/test.dir/src/Conv.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Conv.cu -MT CMakeFiles/test.dir/src/Conv.cu.o -o CMakeFiles/test.dir/src/Conv.cu.o.d

CMakeFiles/test.dir/src/Conv.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Conv.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Conv.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Conv.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Activation.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Activation.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Activation.cu
CMakeFiles/test.dir/src/Activation.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CUDA object CMakeFiles/test.dir/src/Activation.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Activation.cu -o CMakeFiles/test.dir/src/Activation.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Activation.cu -MT CMakeFiles/test.dir/src/Activation.cu.o -o CMakeFiles/test.dir/src/Activation.cu.o.d

CMakeFiles/test.dir/src/Activation.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Activation.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Activation.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Activation.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Pool.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Pool.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Pool.cu
CMakeFiles/test.dir/src/Pool.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CUDA object CMakeFiles/test.dir/src/Pool.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Pool.cu -o CMakeFiles/test.dir/src/Pool.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/Pool.cu -MT CMakeFiles/test.dir/src/Pool.cu.o -o CMakeFiles/test.dir/src/Pool.cu.o.d

CMakeFiles/test.dir/src/Pool.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Pool.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Pool.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Pool.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk1.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk1.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk1.cu
CMakeFiles/test.dir/src/ConvBlk1.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk1.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk1.cu -o CMakeFiles/test.dir/src/ConvBlk1.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk1.cu -MT CMakeFiles/test.dir/src/ConvBlk1.cu.o -o CMakeFiles/test.dir/src/ConvBlk1.cu.o.d

CMakeFiles/test.dir/src/ConvBlk1.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk1.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk1.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk1.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk2.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk2.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk2.cu
CMakeFiles/test.dir/src/ConvBlk2.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk2.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk2.cu -o CMakeFiles/test.dir/src/ConvBlk2.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk2.cu -MT CMakeFiles/test.dir/src/ConvBlk2.cu.o -o CMakeFiles/test.dir/src/ConvBlk2.cu.o.d

CMakeFiles/test.dir/src/ConvBlk2.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk2.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk2.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk2.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk3.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk3.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk3.cu
CMakeFiles/test.dir/src/ConvBlk3.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk3.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk3.cu -o CMakeFiles/test.dir/src/ConvBlk3.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk3.cu -MT CMakeFiles/test.dir/src/ConvBlk3.cu.o -o CMakeFiles/test.dir/src/ConvBlk3.cu.o.d

CMakeFiles/test.dir/src/ConvBlk3.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk3.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk3.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk3.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk4.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk4.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk4.cu
CMakeFiles/test.dir/src/ConvBlk4.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk4.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk4.cu -o CMakeFiles/test.dir/src/ConvBlk4.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk4.cu -MT CMakeFiles/test.dir/src/ConvBlk4.cu.o -o CMakeFiles/test.dir/src/ConvBlk4.cu.o.d

CMakeFiles/test.dir/src/ConvBlk4.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk4.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk4.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk4.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk5.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk5.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk5.cu
CMakeFiles/test.dir/src/ConvBlk5.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk5.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk5.cu -o CMakeFiles/test.dir/src/ConvBlk5.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk5.cu -MT CMakeFiles/test.dir/src/ConvBlk5.cu.o -o CMakeFiles/test.dir/src/ConvBlk5.cu.o.d

CMakeFiles/test.dir/src/ConvBlk5.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk5.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk5.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk5.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk6.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk6.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk6.cu
CMakeFiles/test.dir/src/ConvBlk6.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk6.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk6.cu -o CMakeFiles/test.dir/src/ConvBlk6.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk6.cu -MT CMakeFiles/test.dir/src/ConvBlk6.cu.o -o CMakeFiles/test.dir/src/ConvBlk6.cu.o.d

CMakeFiles/test.dir/src/ConvBlk6.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk6.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk6.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk6.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk7.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk7.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk7.cu
CMakeFiles/test.dir/src/ConvBlk7.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk7.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk7.cu -o CMakeFiles/test.dir/src/ConvBlk7.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk7.cu -MT CMakeFiles/test.dir/src/ConvBlk7.cu.o -o CMakeFiles/test.dir/src/ConvBlk7.cu.o.d

CMakeFiles/test.dir/src/ConvBlk7.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk7.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk7.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk7.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/ConvBlk8.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/ConvBlk8.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk8.cu
CMakeFiles/test.dir/src/ConvBlk8.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CUDA object CMakeFiles/test.dir/src/ConvBlk8.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk8.cu -o CMakeFiles/test.dir/src/ConvBlk8.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/ConvBlk8.cu -MT CMakeFiles/test.dir/src/ConvBlk8.cu.o -o CMakeFiles/test.dir/src/ConvBlk8.cu.o.d

CMakeFiles/test.dir/src/ConvBlk8.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/ConvBlk8.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/ConvBlk8.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/ConvBlk8.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/main.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/main.cu.o: /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/main.cu
CMakeFiles/test.dir/src/main.cu.o: CMakeFiles/test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CUDA object CMakeFiles/test.dir/src/main.cu.o"
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/main.cu -o CMakeFiles/test.dir/src/main.cu.o
	/usr/bin/nvcc  $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -M /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/src/main.cu -MT CMakeFiles/test.dir/src/main.cu.o -o CMakeFiles/test.dir/src/main.cu.o.d

CMakeFiles/test.dir/src/main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/common.cpp.o" \
"CMakeFiles/test.dir/src/Add.cu.o" \
"CMakeFiles/test.dir/src/BatchNorm.cu.o" \
"CMakeFiles/test.dir/src/Conv.cu.o" \
"CMakeFiles/test.dir/src/Activation.cu.o" \
"CMakeFiles/test.dir/src/Pool.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk1.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk2.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk3.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk4.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk5.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk6.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk7.cu.o" \
"CMakeFiles/test.dir/src/ConvBlk8.cu.o" \
"CMakeFiles/test.dir/src/main.cu.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/src/common.cpp.o
test: CMakeFiles/test.dir/src/Add.cu.o
test: CMakeFiles/test.dir/src/BatchNorm.cu.o
test: CMakeFiles/test.dir/src/Conv.cu.o
test: CMakeFiles/test.dir/src/Activation.cu.o
test: CMakeFiles/test.dir/src/Pool.cu.o
test: CMakeFiles/test.dir/src/ConvBlk1.cu.o
test: CMakeFiles/test.dir/src/ConvBlk2.cu.o
test: CMakeFiles/test.dir/src/ConvBlk3.cu.o
test: CMakeFiles/test.dir/src/ConvBlk4.cu.o
test: CMakeFiles/test.dir/src/ConvBlk5.cu.o
test: CMakeFiles/test.dir/src/ConvBlk6.cu.o
test: CMakeFiles/test.dir/src/ConvBlk7.cu.o
test: CMakeFiles/test.dir/src/ConvBlk8.cu.o
test: CMakeFiles/test.dir/src/main.cu.o
test: CMakeFiles/test.dir/build.make
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test
.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152 /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152 /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build /home/lizhi/pact-eval/PACT-ARTIFACT/2080Ti/end2end-model/resnet152/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

