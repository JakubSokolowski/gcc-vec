#ifndef PROJECT_FRACTAL_H
#define PROJECT_FRACTAL_H

#include <vector>
#include "Window.h"

class Fractal{
public:
    Fractal(const Window<int> &scr, const std::vector<int> &colors, int max_iter)
        : scr(scr)
        , colors(colors)
        , max_iter(max_iter)
    {}

    Window<int> scr;
    std::vector<int> colors;
    int max_iter;

};

#endif //PROJECT_FRACTAL_H
