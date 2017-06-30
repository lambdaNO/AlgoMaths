// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir un vecteur u dans la console
//      Calculer la norme de u (racine carré de la somme composantes au carrés)
//      Afficher le résultat (avec 5 décimales)

// Note : Quand on travaille sur des vecteurs et que l'on souhaite faire des opérations de puissance sur les composantes, alors nous devons écrire (u.^2) et pas (u^2)

// -------------------------------------------------------------------

u = input("Saisir les coordonnées du vecteur u : [x_u;y_u] = ");
//[ , ]
r = sqrt(sum(u.^2));
printf("%s\n", "Résultat : ")
printf("%s%0.5f\n","Norme de u : ||u|| = ",r)

