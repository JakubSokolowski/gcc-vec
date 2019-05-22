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

namespace UNOPT {
    using Complex = std::complex<double>;

    Complex Scale(Window<int> &scr, Window<double> &fr, Complex c);

    int Escape(Complex c, int iter_max, const std::function<Complex(Complex, Complex)> &func);

    void GetNumberIterations(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors,
                             const std::function<Complex(Complex, Complex)> &func) ;
    void ComputeFractalPoints(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors,
                              const std::function<Complex(Complex, Complex)> &func) ;

    Fractal Mandelbrot();

}

#endif //PROJECT_MANDELBROT_H
