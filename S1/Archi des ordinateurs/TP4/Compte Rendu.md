# Comtpe Rendu TP4
> RODRIGUES Baptiste
> CHAZELLE Etienne

## Exercice 1


|Instruction|Explication| esp | eax |
|:--|:--|--:|--:|
mov eax, 0xABCDEF01 | place la valeur ABCDEF01 dans eax | x |0xABCDEF01
push eax | place dans la pile la valeur de eax| x-4 | 0xABCDEF01
mov eax, 0x01234567 | place dans eax 0x01234567 | x-4 | 0x01234567
push eax | place dans la pile la valeur eax | x-8 | 0x01234567
pop eax | retire le haut de la pile et place dans eax | x-4 |0x01234567
pop eax | même chose | x |0xABCDEF01


## Exercice 2

### push eax
sub esp, 4      ; retire 4 à la valeur esp
mov [esp], eax  ; place la valeur de eax à l'adresse dans esp

### pop eax
mov eax, [esp]  ; place dans eax la valeur à l'adresse esp
add esp, 4      ; ajoute 4 à la valeur esp

## Exercice 4

Voir fichier E4.asm, le programme fonctionne correctement, pas de grande difficulté sauf pour l'utilisation du compteur nous avions une première version avec une variable mais c'était trop compliqué pour pas grand chose donc nous avon fini par utilisé le registre ecx.


## Exercice 6
### Programme à copier
```
    call print_int
suite :
    mov eax, 0
    ...

print_int :
    ...
```
### Programme copier
```
    push suite      ; push dans la pile l'adresse de la ligne suite
    jmp print_int   ; saut au label print_int
suite :
    mov eax, 0
    ...

print_int :
    ...
```
## Exercice 10, 11 et 12

Voir programme



## Conclusion

Pendant le TP notre plus grande difficulté et bloquage a été l'exercice 10 avec l'appel système pour write, pour le reste des exercices nos erreurs étaient classique et après une ou deux relectures elles étaient trouvées.
