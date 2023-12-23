cmake_minimum_required(VERSION 3.10)

project(GVSU-Chem-HPS-Testing)

# Specify include directories
include_directories(/opt/homebrew/include)
include_directories(/opt/homebrew/Cellar/googletest/1.14.0/include)  # Google Test headers

# Specify link directories
link_directories(/opt/homebrew/lib)  # This might be the directory where libgtest.a and libgtest_main.a reside

# Create the executable target
add_executable(test.out main_test.cpp)

# Specify C++ standard
target_compile_features(test.out PRIVATE cxx_std_14)

# Link against Google Test and Google Test Main
target_link_libraries(test.out PRIVATE gtest gtest_main)

# Register the test with CTest
include(GoogleTest)
gtest_discover_tests(test.out)

