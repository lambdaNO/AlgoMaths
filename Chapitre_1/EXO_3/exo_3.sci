// # Représentation graphique d'une fonction
printf("%s\n","# Représentation graphique d''une fonction")
// -------------------------------------------------------

// On demande à l'utilisateur de saisir la fonction, les bornes de l'intervalle ainsi que le nombre de points : 
fonc = input("Saisir l''expression de la fonction f : f(x) =","string");
// La saisie des bornes doit se faire de la manière suivant [1,3]
born = input("Saisir les bornes de l''intervalle d''étude : [a,b] = ");
p = input("Saisir le nombre de points à considérer p = ");
//--------------------------------------------------------

a = born(1);
b = born(2);
x = linspace(a,b,p);
deff('[y]=f(x)',"y="+fonc);

clf()
plot(x,f)

//x^2+10*x-23
//[-15,15]
//200

clear a
clear b
clear p
clear born
clear fonc
clear x


//cos(x) + 2*sin(x)
//[-%pi,%pi]
//200
