%include "asm_io.inc"

SECTION .data
prompt1 : db "Entrer un nombre positif : ", 0

SECTION .bss
input1 : resd 1

SECTION .text
global main
    main :
    mov eax, prompt1
    call print_string 
    call read_int
    mov [input1], eax
    mov edx, eax        ; init du compteur à la valeur cpt
    sub edx, 1          ; soustrait 1 au compteur
    cmp edx, 0          ; regarde si cpt n'est pas = a 0
    je boucle
boucle :
    mov edx, 0x00000000 ; init edx
    mov ebx, edx        ; init ebx
    div ebx
    cmp edx, 0          ; compare le reste de la division avec 0
    je print            ; si le reste = 0 alors print 
    jmp suite
print :
    mov eax, edx
    call print_int
suite :
    sub edx,1           ; retire 1 au compteur
    cmp edx, 0          ; compare le compteur et 0
    je end
    jmp boucle
end :
    mov ebx, 0
    mov eax, 1
    int 0x80




