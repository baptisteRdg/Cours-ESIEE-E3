%include "asm_io.inc"

SECTION data
prompt1     :   db  "Entre un premier nombre :",0
prompt2     :   db  "Entre un deuxième nombre :",0
promtTrue   :   db  "Vrai",0
promtFalse  :   db  "Faux, Voici le reste :",0
promtLn     :   db  " ",0


SECTION .bss
input1 : resd 1
input2 : resd 1

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

    ; division :
    mov eax, [input1]       ; place le deividende dans eax
    mov ebx, [input2]       ; place le diviseur dans edx
    mov edx, 0              ; met edx à 0 pour recevoir le reste
    div ebx                 ; aex/ebx et le reste dans edx

    ; comparaison :
    cmp edx, 0              ; compare edx (reste) avec 0
    je aff_true             ; si = alors  jump dans la fonction aff_true   
    ;  pas div par input2
    mov eax, promtFalse     ; place dans eax le prompt Faux
    call print_string       ; affiche eax
    mov eax, edx            ; place le reste dans eax
    call print_int          ; affiche le reste
    ; fin programme
    mov ebx, 0
    mov eax, 1
    int 0x80


aff_true :
    mov eax, promtTrue
    call print_string
    ; fin programme :
    mov ebx, 0
    mov eax, 1
    int 0x80
    

