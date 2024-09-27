cmake_minimum_required(VERSION 3.10)
project(myproject)
set(CMAKE_C_COMPILER "gcc")
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
add_executable(${PROJECT_NAME} shell.c)
add_library(sqlite3 STATIC ${CMAKE_CURRENT_SOURCE_DIR}/sqlite3.c)
target_link_libraries(${PROJECT_NAME} sqlite3)
target_include_directories(${PROJECT_NAME} PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/)





