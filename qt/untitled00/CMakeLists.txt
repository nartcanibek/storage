cmake_minimum_required(VERSION 3.5)

project(untitled00 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(untitled00 main.cpp)

install(TARGETS untitled00
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
