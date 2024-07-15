#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]) {
    int i = atoi(argv[1]);
    if (i % 3 == 0)
        printf("Fizz");
    if (i % 5 == 0)
        printf("Buzz");
    if (i % 3 && i % 5)
        printf(" %d ", i);

    printf("\n");

    return 0;
}

