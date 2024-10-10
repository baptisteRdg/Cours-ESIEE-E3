%include "asm_io.inc"

SECTION data
prompt1 : db "Entrer un nombre : ", 0
prompt2 : db "Un autre nombre : ", 0
outmsg1 : db "Le maximum est "

SECTION .bss
input1 : resd 1
input2 : resd 1

SECTION .text
global main
    main :
    mov eax, prompt1
    call print_string     ; Affichage de prompt1.
    call read_int         ; Lecture d'un entier.
    mov [input1], eax
    mov eax, prompt2
    call print_string     ; Affichage de  prompt2.
    call read_int         ; Lecture d'un entier.
    cmp eax, [input1]     ;  input 1 >= input 2 ( qui est dans eax)
    jae aff_1             ; saut to aff_1 si input2 plus haut
    mov eax, [input1]
    call print_int
    mov ebx, 0
    mov eax, 1
    int 0x80
aff_1 :
    call print_int
    mov ebx, 0
    mov eax, 1
    int 0x80


