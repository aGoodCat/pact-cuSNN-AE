cmake_minimum_required(VERSION 3.10 FATAL_ERROR)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS} --ptxas-options=-v -arch=sm_75")
project(scnnConv LANGUAGES CXX CUDA)
include_directories(${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
#include_directories(/usr/local/cuda/include)
#link_directories(/usr/local/cuda/lib64)
include_directories(/home/yufan/cuda/include)
link_directories(/home/yufan/cuda/lib64)

add_executable(test inc/common.h inc/cudnnOps.h src/common.cpp
        src/Conv.cu
        src/main.cu)
target_link_libraries(test ${CUDA_LIBRARIES} cudnn)
