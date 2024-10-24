#!/bin/bash

while test $1; do 

    if [[ -d $1 ]]; then # si répertoire

        repertoire=$(ls $1 | wc -l 2>/dev/null) 
        if [[ $repertoire -gt 0 ]]; then # si répertoire pas vide

            echo "Répertoire $1 est pas vide, ignoré">&2
        else 
            read -p "Répertoire $1 vide, voulez-vous le supprimer (o/n) ? : " rep
            
            if [[ $rep == 'o' || $rep == 'O' ]]; then # si oui
                echo "Répertoire supprimé"
                rm -rf "$1"
            else
                echo "Répertoire pas supprimé"
            fi
        fi
    else

        echo "$1 n'est pas un répertoire, ignoré">&2
        exit 1 
    fi
    shift 
done
exit 0 