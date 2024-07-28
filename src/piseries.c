#include <stdio.h>
#include <stdlib.h>

/*
 * Implement the series: 1/1 - 1/3 + 1/5 - 1/7 + 1/9 - ... = pi/4
 */

int main(int argc, char* argv[]){
    int sign;
    double sum;

    int n = atoi(argv[1]);
    int m = atoi(argv[2]);

    sign = n%2?1:-1;

    for (int i=2*n-1; i <= m; i+=2){
	    printf("%d\n", i);
    }
    
    return 0;
}

