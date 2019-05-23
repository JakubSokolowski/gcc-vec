#include <stdlib.h>
#include <math.h>

#define SIZE (65536)


void loop(float a[], float b[], float c[]) {
    for (int i=0; i<SIZE; i++)
        a[i] += fmod(b[i], c[i]);
}

int main() {
    float a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}
