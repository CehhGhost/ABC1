void create_b(const int *A, int *B, int size) {
    int i = 0;
    int j = 0;
    int k = size / 2;
    for (; i < size; ++i) {
        if (i % 2 == 0) {
            B[k] = A[i];
            ++k;
        } else {
            B[j] = A[i];
            ++j;
        }
    }
}
