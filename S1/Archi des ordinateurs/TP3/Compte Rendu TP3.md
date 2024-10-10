# Architecture des ordinateurs TP3
>Baptiste RODRIGUES
>Etienne CHAZELLE


## Introduction

bla bla

## Exercice 1

1. Place dans le registre eax à l'adresse de la valeur dans input1.

2. Place dans le resgistre eax le contenu dans l'adresse de la valeur input2.

3. Permet d'afficher sur la sortie le contenu dans le registre eax

4. - la ligne 31 permet de vider le resgistre ebx
    - la ligne 31 permet de mettre le signal d'arrêt de fin d'execution dans le resgistre eax
    - cette ligne marque la fin de l'éxecution du programme.


## Exercice 2
1. Le programme affiche après exécution 1, voici les étapes :

2. Le programme après exécution affiche 1 en sortie, voici les étapes :

|Instruction|Explication|
|:--|--:|
|```mov eax, 0xFFFFFFFF```     | rempli le registre eax|
|```cmp eax, 0```          | compare 0 à eax|
|```jg aff_1```            | si la valeur du registre eax est plus grande que 0, on va à aff_1|
|```mov eax, 0```          | ignorée car la comparaison est vraie|
|```call print_int      ```| aussi ignorée, aurait affiché 0|
|```mov eax, 1       ```   | déplace la valeur 1 dans le registre eax|
|```call print_int```      | affiche la valeur de eax, en l'occurence 1|

## Exercice 4
1502/21
eax : 100
edx : 2

## Exercice 6

int a <- 60

foreach a bi b
si div a par b donne reste = 0 alors print
si b == 0 stop