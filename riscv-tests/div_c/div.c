// #include <stdint.h>

unsigned int divide(unsigned int a, unsigned int b) {
    unsigned int c = a / b;
    return c;
}

unsigned int mod(unsigned int a, unsigned int b) {
    unsigned int c = a % b;
    return c;
}

int main(unsigned int in0, unsigned int in1) {
    unsigned int a = divide(in0, in1);
    unsigned int b = mod(in0, in1);
    return a + b;
}