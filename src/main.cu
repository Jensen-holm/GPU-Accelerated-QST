#include <iostream>
#include "utils/matrix.cuh"  // Include the header file

int main() {
    // Example usage of Matrix
    std::vector<double> vec = {1.0, 2.0, 3.0};
    Matrix mat1(3, 1, vec);

    if (mat1.isVector()) {
        std::cout << "Matrix is a vector." << std::endl;
    } else {
        std::cout << "Matrix is not a vector." << std::endl;
    }

    return 0;
}
