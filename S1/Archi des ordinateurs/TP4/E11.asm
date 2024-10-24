section .text
    global longueur

longueur:
    push ebp            ; Sauvegarde la valeur de ebp
    mov ebp, esp        ; Sauvegarde la tête de la pile dans ebp

    mov ecx, [ebp + 8]  ; Charge l'adresse de la chaîne dans ecx
    xor eax, eax        ; Initialise eax (compteur de longueur) à 0

.calcul_longueur:
    cmp byte [ecx], 0   ; Compare le caractère actuel à 0 (terminateur de chaîne)
    je .fin              ; Si c'est le terminator, on sort de la boucle

    inc eax              ; Incrémente le compteur de longueur
    inc ecx              ; Passe au caractère suivant
    jmp .calcul_longueur ; Retourne à la boucle

.fin:
    pop ebp             ; Restaure la valeur de ebp
    ret                  ; Retourne à l'appelant
