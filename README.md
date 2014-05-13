/* projet réalisé par VIMALANATHAN Kévin et ALI CHERIF Elahous */

/* Projet Pokémon */

/* Projet en cours */

Le but : On veut réaliser un jeu nommé Pokemon. Dans ce jeu on a un personnage qui entre dans une foret où il doit essayer d'attraper des pokemons se trouvant là.


La conception : 

1/ On a créer un fichier Imag.ml où on a mis tous les images nécessaires pour notre jeu. On a tapé la commande ~boudes/pub/ocaml/G208_binaire/imagefromfile .png nom >> imag.ml afin de pouvoir l'utiliser dans notre programme.

2/ On a crée une fenetre 12x12 pour notre jeu. On a mis comme image  tree (un arbre), bulbi (un pokemon),cro (un pokemon), grass(l'herbe), plant( l'herbe à raz de terre), sol( la terre) et sacha (le personnage).

3/ On a décidé de mettre les images plant et sol en mode fond d'écran. 

4/ On a jusqu'à maintenant 7 fonctions :
  - Une fonction pour afficher le décor avec la fonction let afficher_decor ()
  - Une fonction pour afficher le personnage avec la fonction let afficher_perso()
  - Une fonction pour afficer les différents objets c'est-à-dire grass, tree, bulbi, grass let afficher_mobiles ()
  - Une fonction déplacer pour que le personnage bouge.
  - let ramasser_cro et let ramasser_bulbi pour attraper les pokémons.
  - couper_grass pour couper l'herbe.
  - Sinon les fonctions pour arreter le jeu et bloquer l'arbre c'est-à-dire pour empecher que le personnage avance sur l'arbre sont en cours d'élaboration.
  

