#ifndef PROJECT_MANDELBROT_H
#define PROJECT_MANDELBROT_H

#include <iostream>
#include <complex>
#include <vector>
#include <chrono>
#include <functional>
#include "../Window.h"
#include "../visualization/Visualisation.h"
#include "../Fractal.h"

namespace OPT {
    using Complex = std::complex<double>;

    Complex Scale(Window<int> &scr, Window<double> &fr, Complex c);

    int Escape(Complex c, int iter_max);

    void GetNumberIterations(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors) ;
    void ComputeFractalPoints(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors) ;

    Fractal Mandelbrot();
}

#endif //PROJECT_MANDELBROT_H
