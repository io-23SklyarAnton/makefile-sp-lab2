cmake_minimum_required(VERSION 3.12)
project(Calculator)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static-libstdc++ -static-libgcc")

include_directories(include)

add_library(calculator STATIC src/calculator.cpp)

add_executable(calculator_exec src/main.cpp)
target_link_libraries(calculator_exec calculator)
