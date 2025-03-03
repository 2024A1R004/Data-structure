#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
int N,searchelement,found=0;
    scanf("%d",&N);
    int arr[N];
    for(int i=0;i<N;i++){
        scanf("%d",&arr[i]);
    }
    scanf("%d",&searchelement);
    for(int i=0;i<N;i++){
        if(arr[i]==searchelement){
            found=1;
            break;
        }
    }
    if(found){
     printf("Found\n");
    }else{
        printf("Not Found");
    }
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */    
    return 0;
}
