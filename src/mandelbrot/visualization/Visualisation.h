#ifndef PROJECT_VISUALISATION_H
#define PROJECT_VISUALISATION_H


#include <vector>
#include <tuple>
#include <iostream>
#include <SDL/SDL.h>
#include <SDL/SDL_image.h>
#include "../Window.h"
#include "../Fractal.h"


class Visualisation {
public:
    void DisplayFractal(const Fractal& fractal) const;
private:
    SDL_Surface* GenerateFractalSurface(const Fractal& fractal, bool smooth_color) const;
    std::tuple<int, int, int> GetRgbPiecewiseLinear(int n, int iter_max) const ;
    std::tuple<int, int, int> GetRgbSmooth(int n, int iter_max) const ;
};


#endif //PROJECT_VISUALISATION_H
