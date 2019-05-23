#define SIZE (65536)

int a[SIZE], b[SIZE], c[SIZE];

int loop () {
    int i, j;

    for (i=0; i<SIZE; i++){
        for (j=i; j<SIZE; j++) {
            a[i] = b[i] > c[j] ? b[i] : c[j];
        }
    }
    return a[0];
}

int main() {
    int a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}


