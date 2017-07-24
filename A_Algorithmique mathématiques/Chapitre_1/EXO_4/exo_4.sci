// # Etude d'une courbe
printf("%s\n","## Etude d''une courbe - représentation graphique de la fonction")
//------------------------------------------------------------------------------

fonc = input("Saisir l''expression de la fonction f : f(x) =","string");
born = input("Saisir les bornes de l''intervalle d''étude : [a,b] = ");
p = input("Saisir le nombre de points à considérer p = ");

//------------------------------------------------------------------------------
// Définition de la fonction f ... On peut plus voir ce programme comme un test afin de savoir si une fonction passée en paramètre est proche d'un cercle ou non.
deff('[y]=f(x)',"y="+fonc)
deff('[y]=g(x)',"y=1 - sqrt(1-(x-1)^2)")

a = born(1);
b = born(2);

x =linspace(a,b,p);

clf()
a = gca();
a.isoview = "on";
plot(x,f,"+b")
plot(x,g,"+r")

// Dans le cas de f(x) = (1-sqrt(x))^2
// Sur [0,1]
// Avec une précision de 200, 
// => Ce n'est pas un quart de cercle.
