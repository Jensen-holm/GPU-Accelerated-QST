#include <stdio.h>

__global__ void helloWorldKernel1() {
    printf("Hello, World! from kernel 1 - Block %d, Thread %d\n", blockIdx.x, threadIdx.x);
}
