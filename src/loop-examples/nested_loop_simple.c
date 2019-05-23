#include <stdlib.h>
#include <math.h>

#define SIZE	(1L << 16)
double a[SIZE], b[SIZE];
void loop() {
    int i = 0;
    int j = 0;

    for (j = 0; j < SIZE; j++) {
        for (i = 0; i < SIZE; i++) {
            a[i + j * SIZE] += b[i + j * SIZE];
        }
    }
}

int main() {
    loop();
}