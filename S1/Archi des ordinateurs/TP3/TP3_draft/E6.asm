%include "asm_io.inc"

SECTION .data
prompt1 : db    "Entrer un nombre positif : ", 0
espace  : db    " ", 0
stock1 : dd    0   ; pour stocker la valeur saisie

SECTION .text
global main
    main :
    mov eax, prompt1    ; place le promt dans eax
    call print_string   ; affiche eax
    call read_int       ; place l'entier dans eax
    mov [stock1], eax   ; je place eax dans stock
    mov ecx, [stock1]   ; var du compteur
    jmp fonc_div        ; jump au programme de division

fonc_div :

    ; regarde pour stop le programme :
    cmp ecx, 0      ; compare ecx et 0 pour stop le programme
    jbe end         ; si moins de 1 alors fin de la boucle

    ; division :
    mov edx, 0      ; init de edx
    mov eax, [stock1]  ; place dans eax stock1 pour diviser
    div ecx         ; eax/ecx et reste dans edx

    ; affiche si besoin
    cmp edx, 0      ; regarde si edx et 0
    je aff_ecx      ; si = alors affiche ecx
    jmp end_fonc_div


aff_ecx :
    mov eax, ecx    ; place ecx dans eax pour l'afficher
    call print_int  ; affiche eax
    mov eax, espace ; pour afficher un espace
    call print_string
    jmp end_fonc_div

end_fonc_div :
    sub ecx, 1      ; retire un à ecx
    jmp fonc_div

end :
    mov ebx, 0              ; code retour du programme 0 donc ok
    mov eax, 1              ; code pour appel exit du programme
    int 0x80                ; stop le programme depuis l'appel dans eax




