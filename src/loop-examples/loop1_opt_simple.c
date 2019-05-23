#include <stdlib.h>
#include <math.h>

#define SIZE	(1L << 16)

void loop(double *a, double *b) {
    int i;

    for (i = 0; i < SIZE; i++) {
        a[i] += b[i];
    }
}

int main() {
    double a[SIZE];
    double b[SIZE];
    loop(a,b);
}