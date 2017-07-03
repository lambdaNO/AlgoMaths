// Etude d'un parallélogramme
printf("%s\n","## Etude d''un parallélogramme")
// On va demander à l'utilisateur de saisir les coordonnées des trois Points

A = input("Saisir les coordonnées du point A : [xA,yA]");
B = input("Saisir les coordonnées du point B : [xB,yB]");
C = input("Saisir les coordonnées du point C : [xC,yC]");

// On calcul les coordonnées du point I, milieu de [AC]
// On travaille toujours avec des matrices et pas de simple variables, on doit donc utiliser le ./ pour diviser termes à termes.
I = (A+C)./2;
// Par relation de symétrie et d'égalité des distances dans le parallélogramme, on aurait pu calculer de la même façon le point I sur [BD] de la manière suivante : I = (B + D)./2 (*)
// Or cette fois ci, c'est les coordonnées de D qui nous intéressent et on connait les coordonnées de B et I, on peut donc bidouiller la relation (*) afin d'isoler D
D = 2*I - B;
// On a donc calculé les coordonnées du point D : 
printf("Coordonnées du point D :\n%s%0.3f%s%0.3f%s\n "," [xD,yD] = [",D(1),",",D(2),"]")
// On va donc maintenant faire la représentation graphique : 
clf()
g = gca();
g.isoview = "on";
// Même raisonnement que dans l'exo 1, on souhaite tracer une surface fermée 
x = [A(1),B(1),C(1),D(1),A(1)];
y = [A(2),B(2),C(2),D(2),A(2)];

plot(x,y)

// A = [1,2], B = [2,3], C = [4,1]
// D = [3.00, 0.00]

// A = [-4,2], B = [-7,10], C = [5,4]
// D = [8.00, -4.00]
