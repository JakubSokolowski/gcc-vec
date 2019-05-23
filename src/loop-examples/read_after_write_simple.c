#define SIZE (65536)
int a[SIZE];

void loop () {
    int j;

    a[0]=0;
    for (j=1; j<SIZE; j++)
        a[j]=a[j-1]+1;
}


int main() {
    loop();
}