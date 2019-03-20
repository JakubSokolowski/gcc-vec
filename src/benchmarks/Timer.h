#ifndef PROJECT_TIMER_H
#define PROJECT_TIMER_H

#include <chrono>
#include <thread>
#include <iostream>

using std::chrono::time_point;
using std::chrono::duration_cast;
using std::chrono::milliseconds;
using namespace std::literals::chrono_literals;
using std::this_thread::sleep_for;

class Timer {
public:
    void Start();
    double GetTime();

private:
    time_point<std::chrono::steady_clock> = Clock::now();
};

void Timer::Start() {

}

double Timer::GetTime() {
    return 0;
}


#endif //PROJECT_TIMER_H
