%include "asm_io.inc"

SECTION .data
    prompt1: db "Entrer un nombre : ", 0
    zero: db "0", 0
    un: db "1", 0
    newline: db 0xA, 0 

SECTION .bss
    input1: resd 1          ; Réservation de 4 octets pour l'input

SECTION .text
    global main
main:
    mov eax, prompt1
    call print_string
    call read_int            ; Lecture d'un entier
    mov [input1], eax        ; Stockage de l'entier dans l'input1

    mov ecx, 32              ; Nombre de bits à traiter
    mov edx, [input1]        ; Chargement de l'entier dans edx (pas de traitement possible dans la mémoire)

affiche_bit:
    shl edx, 1               ; Décalage des bits de edx vers la gauche
    jc bit_1                 ; Si CF (carry flag) est 1, sauter à bit_1
    jmp bit_0                ; Sinon, on va à bit_0

bit_1:
    mov eax, un              ; Charger l'adresse de la chaîne '1'
    call print_string        ; Afficher '1'
    jmp next_bit

bit_0:
    mov eax, zero            ; Charger l'adresse de la chaîne '0'
    call print_string        ; Afficher '0'

next_bit:
    loop affiche_bit         ; Répéter jusqu'à ce que ecx atteigne 0

    mov eax, newline
    call print_string

    mov eax, 1
    mov ebx, 0
    int 0x80
