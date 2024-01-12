#ifndef MATRIX_CUH
#define MATRIX_CUH

#include <vector>

using size_type = std::vector<double>::size_type;

struct Matrix {
    size_type nrows;
    size_type ncols;
    std::vector<double> elems;

    // Constructor declaration
    Matrix(size_type nrows, size_type ncols, const std::vector<double>& elems);

    // Function to check if the matrix is a vector
    int isVector() const;
};

#endif // MATRIX_CUH
