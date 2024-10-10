| code  | mémoire      
| :- |:-:|
| A  |  b| 
| A  | b |  
| A  | b |


```bloc de code``` 
<span style="color: #26B260">texte coloré en vert</span> 

> Oh la belle prise !

# TP2 Achitecture des ordinateurs 

## Exercice 1

## Exercice 2

## Exercice 3

mov bh, 0xAB 

mov bl, 0xCD

## Exercice 4
| code  | mémoire      
| :- |:-:|
| mov eax 0xf00000f0 |  ax = 0x00f0| 
| add ax 0xf000  | eax = 0xf000f0f0 |  
| add ah al  | eax = 0xf000e0f0 |

mov eax, 0xf00000f0     ; ax = 0x00f0

add ax, 0xf000          ; eax = 0xf000f0f0, ax = 0xf0f0, ah = 0xf0, al = 0xf0

add ah, al ; eax = 0xf000e0f0, ax = 0xe0f0, ah = 0xe0, al = 0xf0

## Exercice 5
- 2 puissance 8

- 2 puissance 32 bits = 4294967296 = 0,5 Gio

- 0x0000100a = 0001 0000 0000 1010 => 4105 cases disponibles avant l'adresse

## Exercice 6

"mov eax, 3" : déplace la valeur 3 dans eax
"mov eax, [3] : déplace la valeur de l'adresse 3 en mémoire (0x000000003) dans eax 

## Exercice 7 

1. ax = 0x1e
2. ah = 0x03
3. eax = 0x0a5a1e03
4. eax = 0x5a1e030f

## Exercice 8

Mouvements :
1. eax = 0x00000005
2. eax = 0x00000004
3. eax = 0x00000010
4. eax = 0x00007f10

Résulat : ```0x00007f10```




