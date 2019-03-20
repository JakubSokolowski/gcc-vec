#ifndef PROJECT_TIMER_H
#define PROJECT_TIMER_H

#include <chrono>
#include <thread>
#include <iostream>

using Clock = std::chrono::steady_clock;
using std::chrono::time_point;
using std::chrono::duration_cast;;
using namespace std::literals::chrono_literals;


class Timer {
public:
    void Start();
    template<typename T>
    T GetTime();

private:
    time_point<Clock> start_time_m{};
};

void Timer::Start() {
    start_time_m = Clock::now();
}

template <typename T>
T Timer::GetTime() {
    auto end = Clock::now();
    auto diff = duration_cast<T>(end - start_time_m);
    return diff;
}


#endif //PROJECT_TIMER_H
