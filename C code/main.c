#include <stdio.h>
#include <stdlib.h>

extern void create_b(const int *A, int *B, int size);
extern void print_mass(int *mass, int size);

int main(int argc, char *argv[]) {
    int size;
    int flag;
    int seed;
    if (argc == 2) {
        size = atoi(argv[1]);
        int A[size];
        int B[size];
        FILE *input = fopen("input.txt", "r");
        for (int i = 0; i < size; ++i) {
            fscanf(input, "%d", &A[i]);
        }
        fclose(input);
        create_b(A, B, size);
        FILE *output = fopen("output.txt", "w");
        for (int i = 0; i < size; ++i) {
            fprintf(output, "%d ", B[i]);
        }
        fclose(output);
        return 0;
    }
    printf("Set size of array(>0 && <= %d)\r\n", 10);
    scanf("%d", &size);
    if (size < 1 || size > 10) {
        printf("Size is out of range\r\n");
        return 1;
    }
    int A[size];
    int B[size];
    printf("Choose input: manual or random(0 = manual; other = random):\r\n");
    scanf("%d", &flag);
    if (flag == 0) {
        printf("\n");
        for (int i = 0; i < size; ++i) {
            printf("A[%d] =", i);
            scanf("%d", A + i);
        }
        create_b(A, B, size);
        print_mass(B, size);
        return 0;
    }
    printf("Choose seed generation(>0 && <= 100):\r\n");
    scanf("%d", &seed);
    if (seed < 1 || seed > 100) {
        printf("Seed is out of range\r\n");
        return 1;
    }
    srand(seed);
    printf("Result A: \r\n");
    for (int i = 0; i < size; ++i) {
        A[i] = rand() % 10;
        printf("A[%d] = %d\r\n", i, *(A + i));
    }
    printf("\r\n");
    create_b(A, B, size);
    print_mass(B, size);
    return 0;
}
