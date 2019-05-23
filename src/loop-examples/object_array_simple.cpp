#define SIZE (65536)

class A {

public:
    int a = 0;
    void func() {
        a++;
    }
};

int loop(A obj[]) {
    for(int i = 0; i < SIZE; i++){
        obj[i].func();
    }
    return obj[0].a;
}
int main() {
    A a[SIZE];
    return loop(a);

}


