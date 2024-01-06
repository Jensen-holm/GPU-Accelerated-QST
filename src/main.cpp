/*
 * =====================================================================================
 *
 *       Filename:  main.cpp
 *
 *    Description:  GVSU Chemistry High Performance Solver 
 *
 *        Version:  1.0
 *        Created:  12/22/2023 11:57:56
 *       Compiler:  g++
 *
 *         Author:  Jensen Holm & Dr. Erin Carrier 
 *   Organization:  Grand Valley State University
 *
 * =====================================================================================
 */

#include <iostream>

// CUDA kernel to print "Hello, World!" from each thread
__global__ void helloFromGPU()
{
    printf("Hello, World! from thread [%d, %d] block [%d, %d]\n",
           threadIdx.x, threadIdx.y,
           blockIdx.x, blockIdx.y);
}

int main()
{
    // Define grid and block dimensions
    dim3 block(16, 16);  // 16x16 = 256 threads per block
    dim3 grid(1, 1);     // 1x1 grid (1 block)

    // Launch the kernel
    helloFromGPU<<<grid, block>>>();

    // Check for any errors in kernel launch
    cudaError_t cudaStatus = cudaDeviceSynchronize();
    if (cudaStatus != cudaSuccess) {
        std::cerr << "Kernel launch failed: " << cudaGetErrorString(cudaStatus) << std::endl;
        return 1;
    }

    // Device reset to ensure clean exit
    cudaDeviceReset();

    return 0;
}

