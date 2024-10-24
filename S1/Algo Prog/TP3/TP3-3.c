#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

char alpha[]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
//char numb[]={'1','2','3','4','5','6','7','8','9','0'};

int get_int(char l){
    int i =0;
    while (l != alpha[i]){i++;}
    return i;
}

 char get_char(int n){
    return alpha[n];
}


bool isTexte(char str[]){
    for(int i=0;i<=25;i++){
        if (str[0]==alpha[i]){return true;}
    }
    return false;
}

void interpretation(char texte[]){
    if (isTexte(texte)){
        int somme_base_10=0;
        for(int i=0;texte[i]!='\0';i++){
            somme_base_10 += (i*26) * get_int(texte[i]);
        }
        printf("pour le texte %s la valeur en base 10 est : %d\n",texte,somme_base_10 );
    }else{
        int nb= atoi(texte);
        int i=0;
        char new_texte[100];
        while (nb > 0)
        {
            int reste = nb % 26;
            new_texte[i++] = get_char(reste);
            nb /=26;
        }
        
        printf("pour le chiffre %s le texte est : %s\n",texte,new_texte );

    }
}


int main(){
    int z =get_int('z');
    printf("z:%d\n",z);

    char l =get_char(z);
    printf("25:%c\n",l);

    char pomme[]="pomme";
    bool p = isTexte(pomme);
    printf("pomme is texte :%d\n",p);

    interpretation("650");
}