#include "opt_mandelbrot.h"
#include <iostream>
int main (int argc, char* argv[]) {
    auto frac = OPT::Mandelbrot();
    std::cout << argv[1];

    auto vis = Visualisation();
    vis.DisplayFractal(frac);
}

