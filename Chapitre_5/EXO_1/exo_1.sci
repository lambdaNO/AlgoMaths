// Etude d'un triangle
printf("%s\n","## Etude d''un triangle")
// On va demander à l'utilisateur de saisir les coordonnées des trois Points
A = input("Saisir les coordonnées du point A : [xA,yA]");
B = input("Saisir les coordonnées du point B : [xB,yB]");
C = input("Saisir les coordonnées du point C : [xC,yC]");

// On va maintenant calculer les distances entre les points avec la norme 2 sqrt(sum( (a_i)^2 ). 
// Attention, on fait des opérations sur des matrices et non des points seuls. On doit donc faire attention à l'écriture.

d1 = sum((A-B).^2);
d2 = sum((A-C).^2);
d3 = sum((B-C).^2);
printf("%s\n","Distance dans le triangle ABC : ")
printf("%s%0.2f\n","[AB] = ", sqrt(d1))
printf("%s%0.2f\n","[AC] = ", sqrt(d2))
printf("%s%0.2f\n","[BC] = ", sqrt(d3))

// On essaye maintenant de trouver l'orthogonalité dans le triangle à l'aide de pythagore
if (d1 == d2 + d3) then
    printf("%s\n", "Le triangle ABC est rectangle en C.")
elseif (d2 == d1 + d3) then
    printf("%s\n", "Le triangle ABC est rectangle en B.")
elseif (d3 == d1 + d2) then
    printf("%s\n", "Le triangle ABC est rectangle en A.")
else 
    printf("%s\n", "Le triangle ABC est quelconque.")
end;
// Maintenant on va effectuer la représentation graphique.
// On efface tous les contenus des fenetres.

clf()
// On créait une nouvelle fenêtre graphique g
g = gca();
// On se place sur l'axe courant
g.isoview = "on";
// On mets dans un vecteur, les coordonnées des x (On veut dessiner une surface fermée. on doit donc terminer la sequence par le point de départ)
x = [A(1),B(1),C(1),A(1)];
//disp(x)
// Idem pour les ordonnées
y = [A(2),B(2),C(2),A(2)];
//disp(y)
// Et on plot
plot(x,y)

