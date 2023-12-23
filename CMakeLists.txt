cmake_minimum_required(VERSION 3.10)

# Set the project name
project(GVSU-Chem-HPS)
include_directories(/opt/homebrew/include)

# Add the executable
add_executable(hps.out src/main.cpp)

