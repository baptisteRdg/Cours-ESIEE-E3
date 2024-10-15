%include "asm_io.inc"

SECTION .data
    prompt: db "Entrer des nombres (entre 0 et 50, terminer par -1) : ", 0
    msg_non_vus: db "Les nombres non vus sont : ", 0
    espace: db " ", 0
    newline: db 0xA, 0

    tableau: times 51 db 0        ; Astuce 2 : souvenir des nombres vus

SECTION .bss
    nombre: resd 1                ; Réserver un entier pour l'entrée utilisateur

SECTION .text
    global main
main:
    mov eax, prompt
    call print_string

saisie:
    call read_int
    mov [nombre], eax             ; Stockage de l'entier lu dans [nombre]

    cmp eax, -1                   ; Vérification du dernier nombre (-1)
    je afficher_non_vus           ; Si -1, passage à l'affichage des nombres non vus

    cmp eax, 0                    ; Vérification que l'entier est supérieur ou égal à 0
    jl saisie                     ; Si inférieur à 0, ignorer et continuer la saisie
    cmp eax, 50                   ; Vérification que l'entier est inférieur ou égal à 50
    jg saisie                     ; Si supérieur à 50, ignorer et continuer la saisie

    mov ebx, eax                  ; Copie du nombre dans ebx
    mov byte [tableau + ebx], 1   ; Placement de 1 à l'index correspondant dans le tableau

    jmp saisie                    ; Retour à la saisie du prochain nombre

afficher_non_vus:
    mov eax, msg_non_vus
    call print_string

    mov ecx, 0                    ; Début du parcours des entiers de 0 à 50

boucle_affichage:
    cmp ecx, 51                   ; Si le compteur atteint 51, fin du parcours
    je fin_programme

    mov al, [tableau + ecx]
    cmp al, 1                     ; Comparaison de la valeur à 1 (si vu)
    je suivant                    ; Si vu, passage au nombre suivant

    mov eax, ecx                  ; Si pas vu, on l'affiche
    call print_int                ; Afficher le nombre
    mov eax, espace
    call print_string             ; Afficher un espace

suivant:
    inc ecx                       ; Incrémentation le compteur
    jmp boucle_affichage          ; Répétition pour le nombre suivant

fin_programme:
    mov eax, newline
    call print_string

    mov eax, 1
    mov ebx, 0
    int 0x80
