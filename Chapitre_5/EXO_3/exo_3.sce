// Etude d'un alignement de points
printf("%s\n","## Etude d''un alignement de points")

// On va demander à l'utilisateur de saisir les coordonnées des trois Points

A = input("Saisir les coordonnées du point A : [xA,yA]");
B = input("Saisir les coordonnées du point B : [xB,yB]");
C = input("Saisir les coordonnées du point C : [xC,yC]");

// On calcul les coordonnées des vecteurs AB et AC 

AB = B - A; //Soustraction termes à termes
AC = C - A;

// Pour savoir si deux vecteurs sont colinéaires, on doit trouver k tel que : 
// AB = k x AC <=> k = AB/AC.
// mais on peut également k' tel que AC = k' x AB. <=> k' = AC/AB.
// On cherche à savoir si les deux vecteurs sont colinéaires. on peut donc se ramener à tester simplement l'égalité de k et k'c'est à dire : 
// Nous travaillons sur des vecteurs et non des variables simples. Nous devons donc tester chaque composantes (x et y) ce qui revient à vérifier l'égalité suivante 
// AB(x)/AC(x) == AB(y)/AC(y) <=> AB(x) * AC(y) == AB(y) * AC(x)

if AB(1)*AC(2) == AB(2)*AC(1) then
    
    printf("%s\n","Les vecteurs AB et AC sont colinéaires et donc, les points A,B et C sont alignés.")
    else 
    printf("%s\n","Les vecteurs AB et AC ne sont pas colinéaires et donc, les points A,B et C ne sont pas alignés.") 
end

// Maintenant, on effectue l'affichage

clf()
g = gca();
g.isoview = "on";
// Cette fois ci, comparé aux deux exercices précédents, on ne souhaites pas avoir de surface fermées. On ne doit donc pas répéter la première composante en fin de vecteur.
x = [A(1),B(1),C(1)];
y = [A(2),B(2),C(2)];
plot(x,y)
// A = [1,2], B = [3,4], C = [5,6] => Vecteurs colinéaires
// A = [-5,7], B = [1,9], C = [5,5] => Vecteurs non colinéaires

