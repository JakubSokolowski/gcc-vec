#include "unopt_mandelbrot.h"
int main (int argc, char* argv[]) {
    auto frac = UNOPT::Mandelbrot();
    if(argv[1] == "-show") {
        auto vis = Visualisation();
        vis.DisplayFractal(frac);
    }
}

