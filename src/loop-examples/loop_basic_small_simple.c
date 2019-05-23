int a[5], b[5], c[5];
void loop () {
    int i;

    for (i=0; i<5; i++){
        a[i] = b[i] + c[i];
    }
}


int main() {
    loop();
}