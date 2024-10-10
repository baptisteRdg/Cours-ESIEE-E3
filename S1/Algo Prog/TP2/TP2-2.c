#include <stdio.h>
#include <stdlib.h> 

int main(int argc, char *argv[]) {
    int n1, n2;

    if (argc == 3) { 
        n1 = atoi(argv[1]);
        n2 = atoi(argv[2]); 
    } else {
        printf("Tape un nombre\n");
        scanf("%d", &n1);
        printf("Tape un autre nombre\n");
        scanf("%d", &n2);
    }

    printf("La somme des deux : %d\n", (n1 + n2));

    return 0;
}
