open Directions;;
module Images = Imag;;
let perso = Images.sacha;;
(* Graphics.close_graph ();; *)
Graphics.open_graph " 600x600";;
Graphics.set_color (Graphics.rgb 255 255 255);;
Graphics.fill_rect 0 0 600 600;;
Graphics.set_color (Graphics.rgb 0 0 0);;
let f i =
  Graphics.draw_segments [|
      (50*i,0,50*i,600);
      (0,50*i,600,50*i)
     |];
in
List.iter f [1;2;3;4;5;6;7;8;9;10;11;12];;

Graphics.remember_mode false;;

let afficher img (i,j) =
  Dessiner.dessiner_image img (!j * 50) (550 - !i * 50);;


let plant = [(ref 1, ref 6);(ref 1, ref 7);(ref 1, ref 8);(ref 1, ref 9);(ref 1, ref 10);
		(ref 2, ref 6);	(ref 2, ref 7);(ref 2, ref 8);(ref 2, ref 9);(ref 2, ref 10);
		(ref 3, ref 1);(ref 3, ref 6);	(ref 3, ref 7);
		(ref 4, ref 1);(ref 4, ref 2);(ref 4, ref 3);(ref 4, ref 5);(ref 4, ref 6);(ref 4, ref 7);(ref 4, ref 8);
		(ref 5, ref 1);(ref 5, ref 2);(ref 5, ref 3);(ref 5, ref 8);
		(ref 6, ref 2);(ref 6, ref 3);(ref 6, ref 4);(ref 6, ref 5);(ref 6, ref 6);(ref 6, ref 8);
		(ref 7, ref 2);(ref 7, ref 3);(ref 7, ref 4);(ref 7, ref 5);(ref 7, ref 6);(ref 7, ref 8);(ref 7, ref 9);
		(ref 8, ref 2);(ref 8, ref 3);(ref 8, ref 4);
		(ref 9, ref 7);(ref 9, ref 8);
		(ref 10, ref 1);(ref 10, ref 2);(ref 10, ref 3);(ref 10, ref 4);(ref 10, ref 5);(ref 10, ref 8);(ref 10, ref 9)];;

(* Taille de l'image de l'arbre à coriger car il sort du case *)
let tree = [(ref 0, ref 0);(ref 0, ref 1);(ref 0, ref 2);(ref 0, ref 3);(ref 0, ref 4);(ref 0, ref 5);(ref 0, ref 6);(ref 0, ref 7);   (ref 		0, ref 8);(ref 0, ref 9);(ref 0, ref 10);(ref 0, ref 11);
		(ref 1, ref 1);(ref 1, ref 2);(ref 1, ref 3);(ref 1, ref 4);(ref 1, ref 5);(ref 1, ref 11);
		(ref 2, ref 1);(ref 2, ref 3);(ref 2, ref 4);(ref 2, ref 5);(ref 2, ref 11);
		(ref 3, ref 0);(ref 3, ref 10);(ref 3, ref 11);
		(ref 4, ref 10);(ref 4, ref 11);
		(ref 6, ref 0);(ref 6, ref 9);(ref 6, ref 11);
		(ref 7, ref 11);
		(ref 8, ref 11);
		(ref 9, ref 6);(ref 9, ref 9);(ref 9, ref 10);(ref 9, ref 11);
		(ref 10, ref 6);(ref 10, ref 7);(ref 10, ref 10);(ref 10, ref 11);
		(ref 11, ref 1);(ref 11, ref 2);(ref 11, ref 3);(ref 11, ref 4);(ref 11, ref 5);(ref 11, ref 6);(ref 11, ref 7);(ref 			11, ref 8);(ref 11, ref 9);(ref 11, ref 10);(ref 11, ref 11)];;

let grass = [(ref 1, ref 6);(ref 1, ref 7);(ref 1, ref 8);(ref 1, ref 9);(ref 1, ref 10);
		(ref 2, ref 6);(ref 2, ref 7);(ref 2, ref 8);(ref 2, ref 9);(ref 2, ref 10);
		(ref 3, ref 1);(ref 3, ref 6);(ref 3, ref 7);
		(ref 4, ref 1);(ref 4, ref 2);(ref 4, ref 3);(ref 4, ref 5);(ref 4, ref 6);(ref 4, ref 7);(ref 4, ref 8);
		(ref 5, ref 1);(ref 5, ref 2);(ref 5, ref 3);(ref 5, ref 8);
		(ref 6, ref 2);(ref 6, ref 3);(ref 6, ref 4);(ref 6, ref 5);(ref 6, ref 6);(ref 6, ref 8);
		(ref 7, ref 2);(ref 7, ref 3);(ref 7, ref 4);(ref 7, ref 5);(ref 7, ref 6);(ref 7, ref 8);(ref 7, ref 9);
		(ref 8, ref 2);(ref 8, ref 3);(ref 8, ref 4);
		(ref 9, ref 7);(ref 9, ref 8);
		(ref 10, ref 1);(ref 10, ref 2);(ref 10, ref 3);(ref 10, ref 4);(ref 10, ref 5);(ref 10, ref 8);(ref 10, ref 9)];;

let sol = [(ref 0, ref 0);(ref 0, ref 1);(ref 0, ref 2);(ref 0, ref 3);(ref 0, ref 4);(ref 0, ref 5);(ref 0, ref 6);(ref 0, ref 7);(ref 		0, ref 8);(ref 0, ref 9);(ref 0, ref 10);(ref 0, ref 11);(ref 0, ref 12);
		(ref 1, ref 0);(ref 1, ref 1);(ref 1, ref 2);(ref 1, ref 3);(ref 1, ref 4);(ref 1, ref 5);(ref 1, ref 6);(ref 1, ref 7); (ref 1, ref 8);(ref 1, ref 9);(ref 1, ref 10);(ref 1, ref 11);(ref 1, ref 12);
		(ref 2, ref 0);(ref 2, ref 1);(ref 2, ref 2);(ref 2, ref 3);(ref 2, ref 4);(ref 2, ref 5);(ref 2, ref 6);(ref 2, ref 7);(ref 2, ref 8);(ref 2, ref 9);(ref 2, ref 10);(ref 2, ref 11);(ref 2, ref 12);
		(ref 3, ref 0);(ref 3, ref 1);(ref 3, ref 2);(ref 3, ref 3);(ref 3, ref 4);(ref 3, ref 5);(ref 3, ref 6);(ref 3, ref 7);(ref 3, ref 8);(ref 3, ref 9);(ref 3, ref 10);(ref 3, ref 11);(ref 3, ref 12);
		(ref 4, ref 0);(ref 4, ref 1);(ref 4, ref 2);(ref 4, ref 3);(ref 4, ref 4);(ref 4, ref 5);(ref 4, ref 6);(ref 4, ref 7);(ref 4, ref 8);(ref 4, ref 9);(ref 4, ref 10);(ref 4, ref 11);(ref 4, ref 12);
		(ref 5, ref 0);(ref 5, ref 1);(ref 5, ref 2);(ref 5, ref 3);(ref 5, ref 4);(ref 5, ref 5);(ref 5, ref 6);(ref 5, ref 7);(ref 5, ref 8);(ref 5, ref 9);(ref 5, ref 10);(ref 5, ref 11);(ref 5, ref 12);
		(ref 6, ref 0);(ref 6, ref 1);(ref 6, ref 2);(ref 6, ref 3);(ref 6, ref 4);(ref 6, ref 5);(ref 6, ref 6);(ref 6, ref 7);(ref 6, ref 8);(ref 6, ref 9 );(ref 6, ref 10);(ref 6, ref 11);(ref 6, ref 12);
		(ref 7, ref 0);(ref 7, ref 1);(ref 7, ref 2);(ref 7, ref 3);(ref 7, ref 4);(ref 7, ref 5);(ref 7, ref 6);(ref 7, ref 7);(ref 7, ref 8);(ref 7, ref 9);(ref 7, ref 10);(ref 7, ref 11);(ref 7, ref 12);
		(ref 8, ref 0);(ref 8, ref 1);(ref 8, ref 2);(ref 8, ref 3);(ref 8, ref 4);(ref 8, ref 5);(ref 8, ref 6);(ref 8, ref 7);(ref 8, ref 8);(ref 8, ref 9);(ref 8, ref 10);(ref 8, ref 11);(ref 8, ref 12);
		(ref 9, ref 0);(ref 9, ref 1);(ref 9, ref 2);(ref 9, ref 3);(ref 9, ref 4);(ref 9, ref 5);(ref 9, ref 6);(ref 9, ref 7);(ref 9, ref 8);(ref 9, ref 9);(ref 9, ref 10);(ref 9, ref 11);(ref 9, ref 12);
		(ref 10, ref 0);(ref 10, ref 1);(ref 10, ref 2);(ref 10, ref 3);(ref 10, ref 4);(ref 10, ref 5);(ref 10, ref 6);(ref 10, ref 7);(ref 10, ref 8);(ref 10, ref 9);(ref 10, ref 10);(ref 10, ref 11);(ref 10, ref 12);
		(ref 11, ref 0);(ref 11, ref 1);(ref 11, ref 2);(ref 11, ref 3);(ref 11, ref 4);(ref 11, ref 5);(ref 11, ref 6);(ref 11, ref 7);(ref 11, ref 8);(ref 11, ref 9);(ref 11, ref 10);(ref 11, ref 11);(ref 11, ref 12);
		(ref 12, ref 0);(ref 12, ref 1);(ref 12, ref 2);(ref 12, ref 3);(ref 12, ref 4);(ref 12, ref 5);(ref 12, ref 6);(ref 12, ref 7);(ref 12, ref 8);(ref 12, ref 9);(ref 12, ref 10);(ref 12, ref 11);(ref 12, ref 12)];;

      
let cro = [(ref 1,ref 5)];;

let bulbi = [(ref 3,ref 1)];;




let perso_i, perso_j = ref 5, ref 10;;

let afficher_decor () =
  Graphics.synchronize();;
let afficher_perso() =
  afficher perso (perso_i,perso_j);;
let afficher_mobiles () =
  List.iter (afficher Images.cro) cro;
  List.iter (afficher Images.bulbi) bulbi; 
  List.iter (afficher Images.tree) tree;
  List.iter (afficher Images.grass) grass;
  afficher_perso ();;


let deplacer direction =
  let () = match direction with
    | E -> perso_j := !perso_j + 1
    | O -> perso_j := !perso_j - 1
    | S -> perso_i := !perso_i + 1
    | N -> perso_i := !perso_i - 1
  in
  let ramasser_cro (ri,rj) =
    if (!ri,!rj) = (!perso_i,!perso_j) then
      begin
        ri := -1;
        rj := 13;
      end
  in

 let ramasser_bulbi (ri,rj) =
    if (!ri,!rj) = (!perso_i,!perso_j) then
      begin
        ri := -1;
        rj := 13;
      end
  in

 let couper_grass (ri,rj) =
    if (!ri,!rj) = (!perso_i,!perso_j) then
     begin
        ri := -1;
        rj := 13;
     end
  in
 
(*     ces 2 fonctions à revoir 
 let bloquer =
    let bloque_arbre(ri,rj) = match direction with
       |N -> if(!ri,!rj) = (!perso_i,!perso_j) then
              begin 
               perso_i + 1
  	      end
      |S -> if(!ri,!rj) = (!perso_i,!perso_j) then
              begin 
               perso_i - 1
  	      end
      |E -> if(!ri,!rj) = (!perso_i,!perso_j) then
              begin 
               perso_i - 1
  	      end   
      |O -> if(!ri,!rj) = (!perso_i,!perso_j) then
              begin 
               perso_i + 1
  	      end   
                
 in

 let arreter_jeu () =
     if (!perso_i = 5, !perso_j = 11) then
       begin
         print_string " Jeu terminée\n";;
	 Graphics.close_graph ();;
         return Exit;;
      end
 in 
*)
 
 
  
  List.iter ramasser_cro cro;
  List.iter ramasser_bulbi bulbi;
  List.iter couper_grass grass;
  List.iter bloquer_arbre tree;
  afficher_decor ();
  afficher_mobiles ();;

let jouer p = Interprete.run p deplacer;;


print_string "          *** космонавт ***\n";;
print_string "       Pokémon!!\n";;
print_string "\n";;
print_string "  Ali Cherif Elhaous et Vimalanathan Kévin\n";;
print_string " Crédit image : lostgarden.com\n";;

(* Affichage en fond d'écran *)

Graphics.remember_mode true;;
 List.iter (afficher Images.sol) sol;
 List.iter (afficher Images.plant) plant;
Graphics.remember_mode false;;

afficher_mobiles ();;
