%include "asm_io.inc"

SECTION data
promt1 : db "Entrez un nombre à mettre dans la pile, mettre -1 pour arrêter la saise : ", 0
espace : db " ",0

SECTION .text
global main
    main :
    mov ecx, 0          ; init du compteur
    jmp boucle

boucle :
    mov eax, promt1     ; place dans eax le texte
    call print_string   ; affiche eax
    call read_int       ; place dans eax la saisie

    ; comparaison 
    cmp eax, -1         ; compare eax (saisie) avec -1
    je aff_pile         ; affiche la pile si la saisie est -1

    ; sinon > place dans la pile la saisie
    push eax            ; place dans la pile eax
    inc ecx             ; ajoute un au compteur
    jmp boucle

aff_pile :
    ; comparaison
    cmp ecx, 0          ; compare ecx et 0
    je end              ; si = alors fin du programme
    pop eax             ; place dans eax le haut de la pile
    call print_int      ; affiche eax
    mov eax, espace     ; affiche espace
    call print_string   ; affiche un espace
    dec ecx        ; retire un au compteur
    jmp aff_pile

end :
    mov ebx, 0
    mov eax, 1
    int 0x80

