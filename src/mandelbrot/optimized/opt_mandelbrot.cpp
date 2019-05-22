#include <iostream>
#include <complex>
#include <vector>
#include <chrono>
#include <functional>
#include "../Window.h"
#include "../visualization/Visualisation.h"
#include "../Fractal.h"
#include "opt_mandelbrot.h"

namespace OPT {
    using Complex = std::complex<double>;

    Complex Scale(Window<int> &scr, Window<double> &fr, Complex c) {
        Complex aux(c.real() / (double)scr.width() * fr.width() + fr.x_min(),
                    c.imag() / (double)scr.height() * fr.height() + fr.y_min());
        return aux;
    }

    int Escape(Complex c, int iter_max, const std::function<Complex(Complex, Complex)> &func) {
        Complex z(0,0);
        int iter = 0;

        while (abs(z) < 2.0 && iter < iter_max) {
            z = func(z, c);
            iter++;
        }

        return iter;
    }

    void GetNumberIterations(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors,
                             const std::function<Complex(Complex, Complex)> &func) {
        int k = 0, progress = -1;
        for(int i = scr.y_min(); i < scr.y_max(); ++i) {
            for(int j = scr.x_min(); j < scr.x_max(); ++j) {
                Complex c((double) j, (double) i);
                c = Scale(scr, fract, c);
                colors[k] = Escape(c, iter_max, func);
                k++;
            }
        }
    }

    void ComputeFractalPoints(Window<int> &scr, Window<double> &fract, int iter_max, std::vector<int> &colors,
                              const std::function<Complex(Complex, Complex)> &func) {
        auto start = std::chrono::steady_clock::now();
        GetNumberIterations(scr, fract, iter_max, colors, func);
        auto end = std::chrono::steady_clock::now();
        std::cout << "Time to generate fractal" << " = " << std::chrono::duration <double, std::milli> (end - start).count() << " [ms]" << std::endl;
    }

    Fractal Mandelbrot() {
        // Define the Size of the image
        Window<int> scr(0, 800, 0, 800);
        // The domain in which we test for points
        Window<double> fract(-2.2, 1.2, -1.7, 1.7);

        auto func = [] (Complex z, Complex c) -> Complex {return z * z + c; };

        int iter_max = 500;
        std::vector<int> colors(scr.Size());

        ComputeFractalPoints(scr, fract, iter_max, colors, func);

        return Fractal(scr, colors, iter_max);
    }
}
