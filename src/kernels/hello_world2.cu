#include <stdio.h>

__global__ void helloWorldKernel2() {
    printf("Hello, World! from kernel 2 - Block %d, Thread %d\n", blockIdx.x, threadIdx.x);
}
