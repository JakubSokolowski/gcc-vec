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
        arr_res[i] = arr_a[i] * arr_b[i] * cFixedMultiply;
    }
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

    std::generate(arr_a.begin(), arr_a.end(),random_double);
    std::generate(arr_b.begin(), arr_b.end(),random_double);

    double cFixedMultiply = 23.5f;

    for(unsigned int i = 0; i < arr_a.size(); i++) {
        arr_res[i] = arr_a[i] * arr_b[i] * cFixedMultiply;
    }

    return arr_res[0];
}



// Sturcture-Of-Array to hold coordinates
struct Vector3
{
    std::vector<double> x;
    std::vector<double> y;
    std::vector<double> z;

    // final result of the distance calcualtion
    std::vector<double> distance;

    void add( double _x, double _y, double _z )
    {
        x.push_back( _x );
        y.push_back( _y );
        z.push_back( _z );
        distance.push_back( 0.0f );
    }

};

void RunBenchmark() {
    // Fixed Size Arrays

    typedef std::array<double, 10> DataArray;

    DataArray vect_a = { 0,1,2,3,4,5,6,7,8,9 };
    DataArray vect_b = {0.5,1,2,3,4,5,6,7,8,9 };
    DataArray vect_res_plain = { 0,0,0,0,0,0,0,0,0,0};
    DataArray vect_res_lambda = { 0,0,0,0,0,0,0,0,0,0};

    constexpr double cFixedMultiply = 23.5f;

    // simple loop vectorized
    // -- auto-vectorized --
    for( unsigned int i = 0; i < vect_a.size(); ++ i)
    {
        vect_res_plain[i] = vect_a[i]  + vect_b[i];
    }

    // Defining a compute kernel to encapsulate a specific computation
    auto kernel_multiply = [ &cFixedMultiply ]( DataArray const& a, DataArray const& b, DataArray & res ) ->void  {
        for( unsigned int i = 0; i < a.size(); ++ i)
            res[i] = a[i] * b[i] * cFixedMultiply;
    };

    // call the lambda function
    // this call is autovectorized
    kernel_multiply ( vect_a, vect_b, vect_res_lambda );


    // This kernel will be called multiple times and performs the quadrature
    auto kernel_square = [] ( double const& a)->double {
        return ( a * a );
    };

    // create struct and fill with dummy values
    Vector3 v3;
    for ( unsigned int i = 0; i < 50 ; ++ i)
    {
        v3.add( i * 1.1, i * 2.2,  i* 3.3 );
    }

    // store the size in a local variable. This is needed to GCG
    // can estimate the loop iterations
    const unsigned int size = v3.x.size();

    // -- auto-vectorized --
    for ( unsigned int i = 0; i < size; ++ i)
    {
        v3.distance[i] = sqrt( kernel_square( v3.x[i] ) + kernel_square( v3.y[i] ) + kernel_square( v3.z[i] )) ;
    }

//    // output the result, so GCC won't optimize the calculations away
//    std::cout << std::endl << "Computation on std::array" << std::endl;
//    for( unsigned int i = 0; i < vect_a.size(); ++ i)
//    {
//        std::cout << vect_res_plain[i] << std::endl;
//        std::cout << vect_res_lambda[i] << std::endl;
//    }
//
//    std::cout << std::endl << "Computation on Structure-of-Array with variable sized std::vectors" << std::endl;
//    for( unsigned int i = 0; i < v3.x.size(); ++ i)
//    {i
//        std::cout << "sqrt( " << v3.x[i] << "^2 + " << v3.y[i] << "^2 + " << v3.z[i] << "^2 ) = "
//                  << v3.distance[i] << std::endl;
//    }
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