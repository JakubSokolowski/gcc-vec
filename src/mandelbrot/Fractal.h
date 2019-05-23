#ifndef PROJECT_FRACTAL_H
#define PROJECT_FRACTAL_H

#include <vector>
#include "Window.h"

constexpr int SIZE = 800*800;
class Fractal{
public:
    Fractal(const Window<int> &scr, int col[SIZE], int max_iter)
        : scr(scr)
        , max_iter(max_iter)
    {
        for(int i = 0; i < SIZE;i ++)
            this->col[i] = col[i];
    }

    Fractal(const Window<int> &scr, const std::vector<int> &colors, int max_iter)
            : scr(scr)
            , max_iter(max_iter)
            , colors(colors)
    {

    }

    Window<int> scr;
    std::vector<int> colors;
    int max_iter;
    int col[SIZE];



};

#endif //PROJECT_FRACTAL_H
