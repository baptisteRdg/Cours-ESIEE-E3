#include <stdio.h>


int puissance_iterative(int a,int n){ // Calcul de le puissance avec une boucle
    int somme=0;
    while (n != 0){
        //printf("a:%d, b:%d, s:%d\n",a,n,somme); // ligne de vérif par étapes
        somme+=(a*a);
        n--;
    }
    return somme;
}

int puissance_recursive(int a, int n){
    if(n ==0){return 0;}
    return (a*a+(puissance_recursive(a,(n-1))));
}

int main(){
    
    printf("Utilisation de la fonction puissance_iterative avec a = 4 et n = 3\n");
    printf(" Résultat : %d\n\n",puissance_iterative(4,3));

    printf("Utilisation de la fonction puissance_recursive avec a = 4 et n = 3\n");
    printf("Résultat : %d\n",puissance_recursive(4,3));
    return 0;
}


