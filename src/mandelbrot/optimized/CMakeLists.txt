project(mandelbrot-opt CXX)

set(
        OPT_COMPILER_FLAGS
        "-std=c++11 -march=native -O3"
)

set(
        COMMON_HEADERS
        ../../benchmarks/Timer.h
        ../../benchmarks/RandomHelper.h
        ../Fractal.h
        ../Window.h
)
set(
        MANDELBROT_OPT
        main.cpp
        opt_mandelbrot.h
        opt_mandelbrot.cpp
)

add_executable(
        mandelbrot-opt
        ${COMMON_HEADERS}
        ${MANDELBROT_OPT}
)

set_target_properties(mandelbrot-opt PROPERTIES COMPILE_FLAGS ${OPT_COMPILER_FLAGS})
target_link_libraries(
        mandelbrot-opt
        vis
        -lfreeimage
        -lSDL
        -lSDLmain
        -lSDL_image
)



