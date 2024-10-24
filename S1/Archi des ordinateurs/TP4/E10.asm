%include "asm_io.inc"

SECTION .data
    phrase_print: db "Bonjour tout le monde !", 0xA, 0

SECTION .text
    global main

main: 
    ; Affiche la phrase
    push phrase_print
    call print_string2
    jmp fin

print_string2: 
    ; Début de la fonction
    push ebp
    mov ebp, esp

    ; Sauvegarde du registre esi
    push esi

    ; Récupère l'adresse de la chaîne depuis la pile
    mov esi, [ebp + 8]  ; esi pointe vers le début de la chaîne

boucle:
    mov al, [esi]       ; Charge le caractère à l'adresse esi dans al
    cmp al, 0           ; Si c'est le caractère nul, on sort de la boucle
    je fin_boucle

    ; Appel système pour écrire le caractère
    mov eax, 4          ; sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, esi        ; pointeur vers le caractère à afficher
    mov edx, 1          ; longueur = 1
    int 0x80            ; appel système

    inc esi             ; Passe au caractère suivant
    jmp boucle          ; Continue la boucle

fin_boucle:
    ; Restaure le registre esi
    pop esi
    ; Restaure ebp et termine la fonction
    mov esp, ebp
    pop ebp
    ret

fin: 
    ; Code de sortie
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; code de retour 0
    int 0x80            ; appel système