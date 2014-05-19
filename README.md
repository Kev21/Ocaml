

/* Nom : ALICHERIF
   Prenom : Elhaous 
   numero_etudiant: 11001426
   Nom : VIMALANATHAN 
   Prenom : Kévin
   numero_etudiant: 11002789 
 */

/*-------PROJET CAML-------------------------------------------------*/

Nom du jeu:  POKEMON  SAUVER.BULBIZARE

But du jeu: Le joueur doit essayer de capturer Bulbizare sans se faire attraper par les mechants qui se dissimulent dans les hautes herbes.

Descriptif: Notre implementation donne la possibilité au joueur principal de pouvoir se deplacer à travers tout le terrain, nous avons fait en sorte qu'il ne puisse pas sortir du cadre du terrain ou traverser les arbres qui sont des elements du décor et donc qu'il ne puisse pas les franchir, le joueur principal ne peut pas traverser Bulbizare qui est le pokemon à sauver et donc pour le sauver nous donnons la possibilité au joueur de le capturer avec la fonction "capture" qui permet de gagner le jeu, Cependant une bonne chose a savoir: le joueur n'a le droit qu'à vingt pas pour arriver jusqu'a Bulbizare, correspondant a ses points de vie qu'il perd a chaque deplacement 
il faut donc etre astucieux, ne pas effectuer de deplacement inutile et surtout trouver le meilleur chemin possible au risque de perdre la partie, mais attention les mechants se cachent dans les herbes et effectuent des deplacements de facon aleatoire lorsque notre joueur se deplace il est donc probable de se faire attraper avant meme d'atteindre Bulbizare ce qui nous fait perdre la partie, couper l'herbe grace a notre fonction "couper" peut etre une bonne solution pour determiner la position de certain mechant et de ce fait eviter de se faire attraper, mais attention tout de meme car cette action fait perdre 2 point de vie. Le joueur peut a tout moment consulter sa barre de vie a l'aide de la fontion "afficherVie()"  ce qui nous permet d'etre constament informé sur l'etat de notre joueur.
Nous avons implementé une fonction perdre() qui se lance lorsque l'on se retrouve confronter à l'une ci dessus, l'interface se ferme apres une pause ( via une minuterie que nous avons implementé) avec un message qui explique les raison de l'echec. 
Lorsque nous gagnons le jeu, c'est a dire apres avoir atrappé Bulbizare la l'interface se ferme apres une pause ( toujours via la meme minuterie) avec un message de victoire.






Le programme:


- On écrit Open Directions afin d'utiliser les directions définis dans le fichier directions.ml.
- Pour utiliser les images dans notre programme, on doit écrire module Images = Imag;; Les matrices d'images se trouvent dans le ficher imag.ml.



	Les variables des éléments du jeu :
 
	- plant représente l'herbe courte se trouvant en dessous de l'herbe haute.
	- tree représente les arbres.
	- grass représente l'herbe haute.
	- sol représente le fond de la fenetre du jeu, il représente le chemin où ne trouve pas l'herbe ou les arbres.
	- perso représente le joueur.
	- bulbi repéresente le pokémon à etre capturer.
	- cro_one représente le premier mechant.
	- cro_two représente le deuxieme mechant.
	- cro_three représente le troisiement mechant.
	- indice  variable indice qui va permettre a nos mechant de se deplacer 
        - tableau_plantA Tableau qui va permettre au mechant de se deplacer de facon aleatoire caché dans les mauvaises herbe represente (i) dans  (i,j) 
        - tableau_plantB Tableau qui va permettre au mechant de se deplacer de facon aleatoire caché dans les mauvaises herbe represente (j) dans  (i,j) 
	- ancCoor_i Variable permettant de garder les anciennes coordonnées du joueur principal avant deplacement en memoire 
	- ancCoor_j Variable permettant de garder les anciennes coordonnées avant deplacement en memoire
	- ancCoorCroco_i Variable permettant de garder les anciennes coordonnées du mechant 1 avant deplacement en memoire
	- ancCoorCroco_j Variable permettant de garder les anciennes coordonnées du mechant 1 avant deplacement en memoire
	- ancCoorCroco_k Variable permettant de garder les anciennes coordonnées du mechant 2 avant deplacement en memoire
	- ancCoorCroco_m Variable permettant de garder les anciennes coordonnées du mechant 2 avant deplacement en memoire
	- ancCoorCroco_n Variable permettant de garder les anciennes coordonnées du mechant 3 avant deplacement en memoire
	- ancCoorCroco_o Variable permettant de garder les anciennes coordonnées du mechant 3 avant deplacement en memoire
	- compteur represente la Vie de notre personnage 

	Les fonctions :

	- let go direction   :  Permet le deplacement du joueur. 

	- let obstacle(ri,rj) : Si le personnage trouve un Obstacle ( Arbre ou Bulbizare il ne peut pas le franchir ,Bulbizare peut etre capturer avec une autre fonction 				       capture que nous traitons en fin de programme ) il ne peut pas le franchir.
    	- let obstacle_terrain(ri,rj) : Le personnage ne peut pas sortir du terrain.

	- let obstaclePour_croco_one(ri,rj) : Si le mechant1 trouve un Arbre il ne peut pas le franchir.

	- let obstaclePour_croco_two(ri,rj) : Si le mechant2 trouve un Arbre il ne peut pas le franchir.

	- let obstaclePour_croco_three(ri,rj) : Si le mechant3 trouve un Arbre il ne peut pas le franchir.

	- let couper direction est composé de let couper_bas(ri,rj), let couper_haut(ri,rj), let couper_gauche(ri,rj), let couper_droite  (ri,rj) : permet au joueur de 																		    couper l'herbe.
	- let capture direction est composé de let capture_bas(i,j), let capture_haut(i,j), let capture_gauche(i,j), let capture_droite(i,j) : où i et j représente les 				coordonnées. Il permet de capturer le pokémon. Lorsque l'action a été réalisé il affiche " Vous avez reussi a retrouver BUlbizare et a le 					capturer felicitation ! La partie est GAGNé !!!   ".
	- let perdupartie_monstre : Si on croise un mechant dans notre quete de retrouver Bulbizare ou bien qu'il nous trouve Le jeu s'arrete car on a perdu

 	- let perdupartie_nbrePas : Le personnage effectue trop de pas et que sa vie arrive a 0 il perd 

	- let perdupartie permet d'arreter le jeu lorsque le joueur perd dans le jeu en affichant un message dans le terminal 'Vous n'avez pas reussi a retrouver BUlbizare a temp.La partie est PERDU !!!'.
	- let afficher_perso affiche le personnage.

	- let afficher_mobiles permet d'afficher les différents objets qu'on veut afficher à l'écran comme le pokémon par exemple.

        




	Le graphisme :

	- La taille de l'écran où le jeu s'affiche est de taille 600x600. Il est composé de 12 cases en abscisses et en ordonnées.
	- Graphics.remember_mode permet d'afficher des images en fond d'écran dans notre jeu. Pour l'activer on écrit Graphics.remember_mode true et pour le désactiver on écrit Graphics.remember_mode false.

 
	Commandes dans le terminal:

	- Compilation:	"ocamlmktop directions.cmo interprete.cmo graphics.cma imag.cmo directions.ml imag.ml interprete.ml dessiner.ml poke.ml -o pokemon"

	- Lancer jeu:   "./pokemon"  
	
	- Puis on est dans l'interpéteur Ocaml, on ecrit: 	 "Open Interprete;;" 	puis 	 "Open Poke;;"

	- Pour deplacer le joueur on écrit à chaque fois dépendant la direction voulu c'est-à-dire: - "jouer Nord go;;"
												    - "jouer Sud go;;"
												    - "jouer Est go;;"
												    - "jouer Ouest go;;"

	- Pour couper l'herbe, on écrit comme précedemment mais à la place de "go" on écrit "couper".

	- Pour capturer le pokemon, on écrit comme précedemment mais à la place de "couper" on écrit "capture".

	- Pour voir le nombre de vie qu'il nous reste, il faut écrire "afficherVie();;".

