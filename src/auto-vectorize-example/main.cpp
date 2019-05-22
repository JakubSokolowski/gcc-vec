#include <math.h>

#include <string>
#include <iostream>
#include <array>
#include <vector>
#include <algorithm>
#include <random>
#include "../benchmarks/Timer.h"

const int SIZE = 10000;

const double LOWER_BOUND = 0.0;
const double UPPPER_BOUND = 1000.0;

double Multiply(const double &a, const double &b, const double &c) {
    return a*b*c;
}

double Baseline() {
    std::uniform_real_distribution<double> unif(LOWER_BOUND,UPPPER_BOUND);
    std::default_random_engine re;

    typedef std::vector<double> DataArray;
    DataArray arr_a(SIZE);
    DataArray arr_b(SIZE);
    DataArray arr_res(SIZE);

    auto random_double = [&unif, &re]{
        return unif(re);
    };

    std::generate(arr_a.begin(), arr_a.end(),random_double);
    std::generate(arr_b.begin(), arr_b.end(),random_double);

    double cFixedMultiply = 23.5f;

    for(unsigned int i = 0; i < arr_a.size(); i++) {
        arr_res[i] = Multiply(arr_a[i], arr_b[i], cFixedMultiply);
    }
    return arr_res[0];
}

double Lambda() {
    std::uniform_real_distribution<double> unif(LOWER_BOUND,UPPPER_BOUND);
    std::default_random_engine re;

    typedef std::array<double, SIZE> DataArray;

    DataArray arr_a{};
    DataArray arr_b{};
    DataArray arr_res{};

    auto random_double = [&unif, &re]{
        return unif(re);
    };

    std::generate(arr_a.begin(), arr_a.end(),random_double);
    std::generate(arr_b.begin(), arr_b.end(),random_double);

    constexpr double cFixedMultiply = 23.5f;

    auto kernel_multiply = [ &cFixedMultiply ]( DataArray const& a, DataArray const& b, DataArray & res ) -> void  {
        for( unsigned int i = 0; i < a.size(); ++ i)
            res[i] = a[i] * b[i] * cFixedMultiply;
    };
    kernel_multiply(arr_a, arr_b, arr_res);

    return arr_res[0];
}

double FixedSize() {
    std::uniform_real_distribution<double> unif(LOWER_BOUND,UPPPER_BOUND);
    std::default_random_engine re;

    typedef std::array<double, SIZE> DataArray;

    DataArray arr_a{};
    DataArray arr_b{};
    DataArray arr_res{};

    auto random_double = [&unif, &re]{
        return unif(re);
    };

    std::generate(arr_a.begin(), arr_a.end(), random_double);
    std::generate(arr_b.begin(), arr_b.end(), random_double);

    double cFixedMultiply = 23.5f;

    for(unsigned int i = 0; i < arr_a.size(); i++) {
        arr_res[i] = Multiply(arr_a[i], arr_b[i], cFixedMultiply);
    }

    return arr_res[0];
}

int main() {
    auto timer = Timer{};
    timer.Start();
    int reps = 1000;

    for(int i = 0; i < reps; i++)
        auto result = Baseline();

    auto time = timer.GetTime<std::chrono::nanoseconds>();
    std::cout << "Baseline execution time: " << time.count() / reps;

    timer.Start();


    for(int i = 0; i < reps; i++)
        auto result = FixedSize();

    time = timer.GetTime<std::chrono::nanoseconds>();
    std::cout << "\nFixedSize execution time: " << time.count() / reps;

    timer.Start();

    for(int i = 0; i < reps; i++)
        auto result = Lambda();

    time = timer.GetTime<std::chrono::nanoseconds>();
    std::cout << "\nLambda execution time: " << time.count() / reps;

    return 0;
}