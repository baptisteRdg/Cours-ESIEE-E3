%include "asm_io.inc"

SECTION data
prompt1 : db "Entrer un nombre : ", 0
prompt2 : db "Un autre nombre : ", 0

SECTION .bss
input1 : resd 1     ; variable pour stocker la première réponse de l'utilisateur 
input2 : resd 1     ; same

SECTION .text
global main
    main :
    mov eax, prompt1        ; place le promt dans eax
    call print_string       ; Affichage de eax
    call read_int           ; Lecture d'un entier et place dans eax
    mov [input1], eax       ; place l'entier  saisi dans input1
    mov eax, prompt2        ; place le deuxième promt dans eax
    call print_string       ; Affichage de eax
    call read_int           ; Lecture d'un entier + place dans eax
    mov [input2], eax       ; place l'entier saisi dans input2

    mov eax, [input2]       ; place dans eax la valeur d'input 2 pour la comparaison
    cmp eax, [input1]       ; Compare eax avec input 1
    jae aff_input2          ; Si eax >= input1 alors saut à aff_input2 

    mov eax, [input1]       ;  place dans eax input1
    call print_int          ; affiche eax
    ; fin de programme 
    mov ebx, 0              ; code retour du programme 0 donc ok
    mov eax, 1              ; code pour appel exit du programme
    int 0x80                ; stop le programme depuis l'appel dans eax
aff_input2 :
    mov eax, [input2]       ; place dans eax input2 (déjà le cas)
    call print_int          ; affiche eax

    ;fin de programme
    mov ebx, 0              ; code retour du programme 0 donc ok
    mov eax, 1              ; code pour appel exit du programme
    int 0x80                ; stop le programme depuis l'appel dans eax


