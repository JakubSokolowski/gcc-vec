#define SIZE (65536)

int a[SIZE], b[SIZE], c[SIZE];

void loop(float a[], float b[], float c[]) {
    int i = 0.;
    while (i < SIZE) {
        a[i] = b[i] * c[i];
        if (a[i] < 0.0)
            break;
        ++i;
    }
}

int main() {
    float a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}


