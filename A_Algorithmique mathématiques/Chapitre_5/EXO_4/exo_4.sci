// # Représentation graphique d'une surface de l'espace.
printf("%s\n","##Représentation graphique d''une surface de l''espace. z = f(x,y)")
//-------------------------------------------------------

fonc = input("Saisir l''expression de la fonction f(x,y). z = ","string");
born = input("Saisir les bornes de l''intervalle : [a,b] = ");
p = input("Saisir le nombre de points à considérer : p = ");

a = born(1);
b = born(2);

deff('z=f(x,y)',"z="+fonc)

x = linspace(a,b,p);

clf();
xset('colormap',hotcolormap(128))
fplot3d1(x,x,f)
