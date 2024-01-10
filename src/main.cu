#include <stdio.h>

// Kernel declarations
extern __global__ void helloWorldKernel1();
extern __global__ void helloWorldKernel2();

int main() {
    // Launch kernel 1
    printf("Launching helloWorldKernel1...\n");
    helloWorldKernel1<<<1, 256>>>();
    cudaDeviceSynchronize();  // Wait for kernel 1 to complete

    // Launch kernel 2
    printf("\nLaunching helloWorldKernel2...\n");
    helloWorldKernel2<<<1, 256>>>();
    cudaDeviceSynchronize();  // Wait for kernel 2 to complete

    return 0;
}
