#include <stdio.h>
#include <stdlib.h> 

void speak(int i){
    if ((i > 0)){
        printf(" %d ",i);
        speak(i-1);
    }
    else{printf("\n");}

}

int main(int argc, char *argv[]){
   speak(atoi(argv[1]));
   return 0;
}

