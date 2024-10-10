#include <stdio.h>
#include <stdlib.h> 

int main(int argc, char *argv[]){
   for(int cpt = atoi(argv[1]); cpt>0;cpt--){
    printf(" %d ",cpt);
   }
   printf("\n");
   return 0;
}

