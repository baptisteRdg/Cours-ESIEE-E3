#include <stdio.h>
#include <ctype.h>

void wc() {
    int caracteres = 0; 
    int mots = 0;       
    int lignes = 0;     
    int in_word = 0;  
    int c;            

    printf("Saisir du texte (Ctrl+D pour quitter) :\n");

    while ((c = getchar()) != EOF) { // Lire jusqu'à la fin de fichier
        caracteres++; 

        if (c == '\n') {lignes++; }

        if (isspace(c)) { // trouvé sur internet pour trouver si c'est espace
            if (in_word) {
                mots++;
                in_word = 0; // plus dans un mot
            }
        } else {
            in_word = 1; // dans un mot
        }
    }

    if (in_word) {
        mots++;
    }

    printf("Caractères : %d\n", caracteres);
    printf("Mots : %d\n", mots);
    printf("Lignes : %d\n", lignes);
}

int main() {
    wc();
    return 0;
}
