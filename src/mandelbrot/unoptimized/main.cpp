#include "unopt_mandelbrot.h"
int main (int argc, char* argv[]) {
    auto frac = UNOPT::Mandelbrot();

    auto vis = Visualisation();
    vis.DisplayFractal(frac);
}

