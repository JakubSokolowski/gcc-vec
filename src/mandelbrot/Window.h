#ifndef WINDOW__H
#define WINDOW__H

template <typename T>
class Window {
    T x_min_m, x_max_m, y_min_m, y_max_m;

public:
    Window(T x_min, T x_max, T y_min, T y_max)
            : x_min_m(x_min), x_max_m(x_max), y_min_m(y_min), y_max_m(y_max)
    {}

    T Size() const {
        return (width() * height());
    }

    T width() const {
        return (x_max_m - x_min_m);
    }

    T height() const {
        return (y_max_m - y_min_m);
    }

    T x_min() const {
        return x_min_m;
    }

    void x_min(T x_min) {
        x_min_m = x_min;
    }

    T x_max() const {
        return x_max_m;
    }

    void x_max(T x_max) {
        x_max_m = x_max;
    }

    T y_min() const {
        return y_min_m;
    }

    void y_min(T y_min) {
        y_min_m = y_min;
    }

    T y_max() const {
        return y_max_m;
    }

    void y_max(T y_max) {
        y_max_m = y_max;
    }

    void reset(T x_min, T x_max, T y_min, T y_max) {
        x_min_m = x_min;
        x_max_m = x_max;
        y_min_m = y_min;
        y_max_m = y_max;
    }
};
#endif
