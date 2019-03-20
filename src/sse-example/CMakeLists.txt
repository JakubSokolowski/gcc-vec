set(CMAKE_C_STANDARD 11)
project(sse_example C ASM)
set_source_files_properties(rdtsc.s PROPERTIES COMPILE_FLAGS "-x assembler-with-cpp")
add_executable(
        sse_example
        rdtsc.s
        main.c
)
