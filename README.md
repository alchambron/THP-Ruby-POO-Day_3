## Project - 20/10/2022 - THP - Week 4 - Day 4 / Validant

## Morpion
### Réflexion
> Quels objets physiques pourraient être codés en objets Ruby => Cela te donnera des pistes pour définir tes classes

**Listes des différents **
* Game :  Class qui permet de lancer le jeu
* Player : Class qui ressences les différents user
* Board : Class qui représente le board 
* Board Case : Class qui represente les 9 cases du morpion

**Class exterieur**
* Application : Permet de relancer le game à l'infini
* Show : Permet d'afficher le plateau à un instant T. 

> Qu'est ce qui caractérise chaque objet de chaque classe identifiée (une couleur ? un nom ? un chiffre précis ?) => Cela te donnera des pistes pour définir les variables d'instance de chacune de tes classes  

* **Game**  


Va servir à lancer le jeu, c'est à dire lancer les différentes actions.  
Dans l'idée faire en sorte que l'action de jeu se lance étapes après étapes.  

* **Player**  

Prend un string, caractérisé par l'information de qui est l'utilisateur.    
Stock les informations de l'utilisateurs

* **Board**  
Prend en entree le placement des rond et croix 

* **Board case**  
Prend en entree la decision de placement de l'utilisateur 


> Quelles actions ces objets vont-ils subir ? Par exemple un joueur va passer du statut de "c'est ton tour" à "c'est le tour de l'autre", les cases vont se remplir, etc. => Cela te donnera des pistes de méthodes dont il va falloir définir la fonction précise et la classe qui l'hébergera

* **Game**  

* **Player**   
* **Board**  
* **Board Case**   
* **Application**   
* **Show**   

> Liste de façon exhaustive les étapes d'une partie de morpion => Cela va t'aider à voir dans quel ordre les évènements doivent avoir lieu : on crée tel élément, on affiche ça, on modifie tel objet, etc.

1. Choix entre croix et rond  
2. Tu dessine le tableau
3. Le joueur 1 choisi une case  
4. Le joueur 2 choisi une case
5. Comparer les cases autour et définir l'état de la partie
6. Afficher le vainqueur ou la fin de partie

> À partir de la liste ci-dessus, essaye aussi d'identifier les endroits qui tournent en boucle (par exemple les joueurs qui remplissent le plateau à tour de rôle), ce qui change à chaque tour de boucle (quelle variable a changé au tour précédent ?) et les conditions qui font qu'on sort de la boucle (par exemple si tel élément arrive à telle valeur, on arrête la boucle) => Cela te permettra déjà d'identifier les endroits où tu vas coder des boucles for / each (nombre de tour défini à l'avance) ou while (nombre de tour variable – selon l'utilisateur notamment).


***
### Organisation

##### 1 - 2 Players
> Le jeu ne se joue qu'à deux joueurs humains (on ne vous demande pas de coder d'intelligence artificielle aujourd'hui…)

##### 2 - Demande le prénom
> Le programme doit commencer en demandant le prénom de chaque joueur

##### 3 - Déterminer la taille du plateau
> Le plateau de jeu est composé de 9 cases, chacune désignée par sa position verticale (A, B ou C) suivie de sa position horizontale (1, 2 ou 3). Exemples : la case en haut à droite s'appelle "A3" et celle en bas à droite "C3"

##### 4 - Afficher le plateau et demander
> Au début de chaque tour de jeu, le programme affiche dans le terminal le plateau de jeu. Puis il demande au joueur dont c'est le tour où il souhaite jouer 

##### 5 - Faire le déroulement des tours
> Les joueurs jouent à tour de rôle jusqu'à que l'un d'eux gagne ou que le plateau de jeu soit rempli

##### 6 - Detecter et afficher le vainquer / Fin de partie
> Le programme doit détecter la fin de la partie. Si un joueur gagne, le jeu annonce son nom. S'il y a match nul, le programme doit en informer les deux joueurs

##### 7 - Proposer une nouvelle partie
> À la fin d'une partie, le programme doit proposer de lancer une nouvelle partie

##### 8 - Personnalisation / Esthetique
> Un effort sera à faire sur l'affichage du jeu dans le terminal (par ex : board affiché de façon stylée, compteur de parties, couleurs, etc.).




