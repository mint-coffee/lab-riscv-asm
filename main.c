#include <stdio.h>

#define N 3
#define M 2

int negative_sum (int array[M][N]) {
    int sum = 0;
    int i, j;
    for (i = 0; i < M; i++) {
        for (j = 0; j < N; j++) {
            if (array[i][j] < 0) {
                sum += array[i][j];
            }
        }
    }
    return sum;
}

int main () {
    // Initialize an array
    int array [M] [N];
    int i, j;

    // Input
    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            scanf("%d", &array[i][j]);
        }
    }


    // print an array for reference

    for (int i = 0; i < M; ++i) {
        for (int j = 0; j < N; ++j) {
            printf("%d ", array[i][j]);
            if (j == (N - 1)) printf("\n");
        }
    }

    printf ("Sum of negative elements: %d \n", negative_sum(&array));

    return 0;
}