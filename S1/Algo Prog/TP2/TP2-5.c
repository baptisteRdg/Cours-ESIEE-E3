#include <stdio.h>

int main(){
    FILE *file= fopen("TP2-5.c","r"); // création d'un pointeur vers le fichier de code

    int c;
    while ((c = fgetc(file)) != EOF) {
        putchar(c);
    }

    return 0;
}


