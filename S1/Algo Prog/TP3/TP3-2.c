#include <stdio.h>

int wc(char* txt){
    char c; 
    int chars=0;
    int word=0;
    int lignes=0;
    while ((c = fgetc(stdin))!= EOF){
        chars++;

        switch (c){
        case'\n':
            lignes++;
            break;
        
        case' '|'\t':
            word++;
            break;
        default:
            break;
        }
        

        
    }
    
    return 0;
}