# Use fetchContent for get TLSF
cmake_minimum_required(VERSION 3.12)
project(tlsf)

add_library(${PROJECT_NAME} STATIC)
target_sources(${PROJECT_NAME} PRIVATE tlsf.c)
target_include_directories(${PROJECT_NAME} PUBLIC include)