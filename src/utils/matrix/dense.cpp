#include <iostream>
#include <vector>


class DenseMatrix
{
    private:
        int rows;
        int cols;
        std::vector<std::vector<double>> matrix;

    public:
        // Constructor
        DenseMatrix(int r, int c) : rows(r), cols(c), matrix(r, std::vector<double>(c, 0.0)) {}

        // Constructor from stdin
};
