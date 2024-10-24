#!/bin/bash
cpt=1
pids=()  # liste de PID

for dir in "$@"; do
    if [[ -d $dir ]]; then
        find "$dir" -type d > "/tmp/find-${cpt}.txt" 2> "/tmp/find-${cpt}.log" &
        pid=$!  # Récupère le PID du processus en arrière-plan
        echo "J'attends le PID $pid"  
        pids+=($pid)  # Ajoute dans la liste

        ((cpt++))
    else
        echo "$dir n'est pas un répertoire, ignoré" >&2
    fi
done

err=0
for i in "${pids[@]}"; do # Pour chaque PID dans la liste
    wait $i
    if [[ $? -ne 0 ]]; then ((err++)); fi
done
exit $err
