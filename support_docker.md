
## la bonne pratique consiste a initialement à mettre a jour la branche. 
## Donc avant de fusionner la branche feature/xxx dans main, 
## il faut faire l'inverse avec main pour être a jour dans la branche.

## Depuis la branche feature/xxx
git merge main


## revenir dans la branche main
git checkout main

## fusionner la branche
git merge feature/xxx

## Cette méthode évite les conflits.

## Si Git peut fusionner automatiquement → il crée un commit de merge.
## Si des fichiers ont été modifiés dans les deux branches → conflit.
## Si Git affiche :
## --- > CONFLICT (content): Merge conflict in xxx
## il faut faire un diff pour visualiser et résoudre les conflits
