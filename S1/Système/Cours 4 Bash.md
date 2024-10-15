# **Bash** 

Avantages :
* Il s'agit d'un langage de programmation.
* Des variables non typées.
* Langage interprété.


Inconvénients :
* Syntaxe précise, un espace peut provoquer une erreur.
* Un caractères peut avoir plusieurs significations selon le contexte.

### Les caractères génériques 
Pour remplacer des caractères inconnus.
- ```*``` Pour n'importe quelle suite de caractères, même vide.
- ```?``` Pour désigner un seul caractère.
- ```[]``` Pour un seul caractère parmi une suite de caractère.
- ```~``` Pour l'emplacement du dossier de l'utilisateur.


## Les fichiers Shell
La première ligne doit commencer par ```#! /bin/bash```.

## Exécution d'un fichier script

commandes possible pour l'exécution :
- ```bash script```
- ```./script```


possible d'avoir même en python, il s'uffit de mettre le path de l'env python en première ligne du fichier (comme avec bash).

## Les variables
il faut la définir sans espace ex nom=valeur\
pour avoir accès à la valeur de la var il faut mettre $ devant

Variables utilisateurs : a,b,c ...\
Variables du shell : PATH, PS1, USER ...\
Variables des commandes unix : TERM

### fonction read
permet de demander à l'utilisateur de saisir une valeur 
```read variable_```

### Variables spéciales
```$?``` permet de retourner la valeur de la dernière commande, du dernier script.
 ```$$``` id du processus père.\
 ```$0``` nom du processus père.\
```$#``` nombre d'arguments.\
```$*``` tous les arguments.\
```$1, $2, $3, ...``` arguments 1, 2, 3,...




