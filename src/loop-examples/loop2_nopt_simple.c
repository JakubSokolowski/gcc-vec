#define SIZE (65536)

int a[SIZE], b[SIZE], c[SIZE];

int loop ()  {
    int i, j;

    for (i=0; i<SIZE; i++){
        if(a[i] > b[i] * c[i])
            a[i] += b[i] > c[j] ? b[i] : c[j];
        else {
            a[i] = 23;
        }
    }
    return a[0];
}

int main() {
    int a[SIZE], b[SIZE], c[SIZE];
    loop(a,b,c);
}


