set(CMAKE_CXX_STANDARD 17)

set(
    SOURCE_FILES
    main.cpp
)
set(
        HEADERS
        ../benchmarks/Timer.h
        ../benchmarks/RandomHelper.h)

project(auto_vec_no_opt CXX)
add_executable(
    auto_vec_no_opt
    ${SOURCE_FILES} ${HEADERS}
)



project(auto-vec-opt CXX)
set(
    OPT_COMPILER_FLAGS
    "-Ofast- -ftree-vectorizer-verbose=7 -floop-strip-mine -march=native  -march=native -std=c++11"
)
add_executable(
        auto-vec-opt
        ${SOURCE_FILES} ${HEADERS}
)

set_target_properties(auto-vec-opt PROPERTIES COMPILE_FLAGS ${OPT_COMPILER_FLAGS})



