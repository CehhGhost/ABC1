#include <stdio.h>
void print_mass(int *mass, int size) {
    for (int i = 0; i < size; ++i) {
        printf("B[%d] = %d\r\n", i, *(mass + i));
    }
    printf("\r\n");
}
