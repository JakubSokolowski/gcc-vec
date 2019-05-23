int a[256], b[256], c[256];
void loop () {
    int i;

    for (i=0; i<256; i++){
        a[i] = b[i] + c[i];
    }
}


int main() {
    loop();
}