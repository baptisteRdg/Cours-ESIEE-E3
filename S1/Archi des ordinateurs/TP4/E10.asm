%include "asm_io.inc"

SECTION data
promt1 : db "mon programme fonctionne", 0

SECTION .text
global main
main :
    mov eax, promt1     ; place dans eax le texte à afficher
    call print_string2   ; appel de la fonction print

    ; fin programme 
    mov ebx, 0
    mov eax, 1
    int 0x80


print_string2 :
    ; sauvegarde les registres dans la pile
    push eax
    push ebx
    push ecx
    push edx 
        
    mov ebx, 1
    mov ecx, ebp
    add ecx, 8
    mov edx, 1
    mov eax, 4  ; appel système write pour afficher eax
    int 0x80

    ; restaure les registres depuis la pile 
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret         ; retourne dans l'ancien programme 

    