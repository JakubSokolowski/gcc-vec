cmake_minimum_required(VERSION 3.10)
project(gcc_vec C ASM)

set(CMAKE_C_STANDARD 11)
set_source_files_properties(src/sse-example/rdtsc.s PROPERTIES COMPILE_FLAGS "-x assembler-with-cpp")

add_executable(
    gcc_vec
    src/sse-example/rdtsc.s
    src/sse-example/main.c
)
