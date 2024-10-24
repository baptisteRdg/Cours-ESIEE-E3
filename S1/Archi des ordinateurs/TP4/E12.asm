%include "asm_io.inc"  ; Inclure l'interface d'entrée/sortie
%include "E11.asm"     ; Inclure le code de la fonction longueur

section .data
    message db "Bonjour tout le monde !", 0  ; Chaîne de caractères terminée par un octet nul

section .text
    global main
    extern longueur

main:
    ; Appelle print_string2 avec l'adresse de la chaîne
    push message            ; Empile l'adresse de la chaîne
    call print_string2     ; Appelle la fonction
    add esp, 4             ; Nettoie la pile après l'appel

    ; Sortie du programme
    mov eax, 1             ; sys_exit
    xor ebx, ebx           ; code de retour 0
    int 0x80               ; appel système

; Fonction print_string2
print_string2:
    push ebp               ; Sauvegarde la valeur de ebp
    mov ebp, esp           ; Sauvegarde la tête de la pile dans ebp

    ; Récupère l'adresse de la chaîne
    mov ecx, [ebp + 8]     ; ecx = adresse de la chaîne

    ; Appelle la fonction longueur pour obtenir la longueur de la chaîne
    push ecx               ; Empile l'adresse de la chaîne
    call longueur          ; Appelle la fonction longueur
    add esp, 4             ; Dépile l'argument
    ; À ce stade, eax contient la longueur de la chaîne

    ; Appel système pour écrire la chaîne
    mov ebx, 1             ; file descriptor (stdout)
    mov edx, eax           ; Longueur de la chaîne (obtenue de longueur)
    mov eax, 4             ; sys_write
    mov ecx, [ebp + 8]     ; Récupère l'adresse de la chaîne pour l'écrire
    int 0x80               ; appel système

    pop ebp                ; Restaure la valeur de ebp
    ret                     ; Retourne à l'appelant
