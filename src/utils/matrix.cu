#include "matrix.cuh"
#include <iostream>

// Constructor definition
Matrix::Matrix(size_type nrows, size_type ncols, const std::vector<double>& elems)
    : nrows(nrows), ncols(ncols), elems(elems) {}

// Function definition to check if the matrix is a vector
int Matrix::isVector() const {
    if ((nrows != 1) && (ncols != 1)) {
        return 0;
    }
    if (!(elems.size() == nrows) && !(elems.size() == ncols)) {
        return 0;
    }
    return 1;
}
