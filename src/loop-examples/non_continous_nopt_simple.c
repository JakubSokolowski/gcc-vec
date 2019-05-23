#define SIZE (65536)


int loop(float a[], float b[], float c[]) {
    int i;
    for (i=0; i<SIZE; i+=3)
        a[i] = b[i] * c[i];
    return i;
}

int main() {
    float a[SIZE], b[SIZE], c[SIZE];
    return loop(a,b,c);
}


