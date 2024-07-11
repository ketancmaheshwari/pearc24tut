#include <stdio.h>
#include <stdlib.h>
int main(int argc, char* argv[]){
    int flag, i, j;
    int num1 = atoi(argv[1]);
    int num2 = atoi(argv[2]);

    for(i=num1+1; i<num2; ++i){
	flag=0;
	for(j=2; j<=i/2; ++j){
		if(i%j==0){
			flag=1;
			break;
		}
	}

	if(flag==0) printf("%d\n",i); 
    }
    return 0;
}

