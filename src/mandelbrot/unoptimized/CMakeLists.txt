set(
    REPORT_PATH
    ${CMAKE_SOURCE_DIR}/reports
)


set(
    UNOPT_COMPILER_FLAGS
    "-std=c++11 -O3"
)

set(
    MANDELBROT_UNOPT
    main.cpp
    unopt_mandelbrot.h
    unopt_mandelbrot.cpp
)

set(
    COMMON_HEADERS
    ../../benchmarks/Timer.h
    ../../benchmarks/RandomHelper.h
    ../Fractal.h
    ../Window.h
)


project(mandelbrot-no-opt  CXX)


add_executable(
    mandelbrot-no-opt
    ${COMMON_HEADERS}
    ${MANDELBROT_UNOPT}
)

set_target_properties(mandelbrot-no-opt  PROPERTIES COMPILE_FLAGS ${UNOPT_COMPILER_FLAGS})
target_link_libraries(
    mandelbrot-no-opt
    vis
    -lfreeimage
    -lSDL
    -lSDLmain
    -lSDL_image
)