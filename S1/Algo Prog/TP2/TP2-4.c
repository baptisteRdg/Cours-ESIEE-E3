#include <stdio.h>

void print_var(int n){
    printf("Value of the variable %d\n",n);
}

void print_pointer(int* p){
    printf("Pointer address : %p and Pointed value : %d\n",p, *p);
}

void set_pointer(int* p, int n){
    *p =n;
}

int main(int argc, char* argv[]){
    int a;
    int* p=&a; // p fait référence à la variable a
    print_var(a);
    a = 53;
    print_var(a);       //print la valeur de a
    print_pointer(p);   // print l'adresse de a
    set_pointer(p, 42); // la valeur de a devient 42 car p est une référence à a
    print_pointer(p);   // affiche la valeur de a donc 42
    print_var(a);       // affiche a donc 42

    return 0;
}