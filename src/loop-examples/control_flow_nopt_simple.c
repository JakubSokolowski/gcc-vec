#include <stdlib.h>
#include <math.h>

#define SIZE (65536)


void loop(float a[], float b[], float c[]) {
    for (int i=0; i<SIZE; i++) {
        if(a[i] > 0.0) {
            a[i] += b[i] * c[i];
        } else if (a[i] == 2.0) {
            a[i] *= b[i];
        } else {
            a[i] = 2.0;
        }
    }


}

int main() {
    float a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}
