#define SIZE (65536)

#include <math.h>

void loop(float a[], float b[], float c[]) {
    for (int i=0; i<SIZE; i++)
        a[i] += sinf(b[i] * c[i]);
}

int main() {
    float a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}
