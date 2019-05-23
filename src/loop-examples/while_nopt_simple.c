#include <stdlib.h>

#define SIZE (65536)

int a[SIZE], b[SIZE];

int loop (int* a, int *b)  {
    int i = 0;

    while(a!=NULL) {
        *a++ = *b++;
    }

    return (*a) * (*b);
}

int main() {
    int a[SIZE], b[SIZE];
    for(int i =0; i < SIZE; i++)
        a[i] = b[i] = rand() % 10;
    loop(a,b);
}


