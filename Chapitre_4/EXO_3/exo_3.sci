// ## Etude du reste d'une division Euclidienne
printf("%s\n","## Etude du reste d''une division Euclidienne de a par b");
//------------------------------------------------------------------
u = input("Saisir l''expression de a en fonction de n : a = ","string")
v = input("Saisir l''expression de b en fonction de n : b = ","string")
m = input("Saisir le nombre de termes à calculer")

// Définition des fonctions par concaténation des saisies 

deff('[y1] = a(n)',"y1 ="+u)
deff('[y2] = b(n)',"y2 ="+v)
// Définition de l'axe des abscisses pour la représentations graphique
x = linspace(1,m,m);
// Définition d'un vecteur r qui recevra les restes des divisions Euclidiennes de a par b en fonction de n
r = zeros(1,m);

for (i = 1:m)
    r(1,i) = modulo(a(i),b(i));
    printf("%s%i%s%i\n","Pour n =", i," - r = ", r(1,i))
end

// On affiche les résultats : 

clf()
plot(x,r,"xb")


//a = 3*n^2-n+1
//b = 2n - 1
// 30 

//Pour n =693 - r = 1040
//Pour n =694 - r = 348
//Pour n =695 - r = 1043
//Pour n =696 - r = 349
//Pour n =697 - r = 1046
//Pour n =698 - r = 350
//Pour n =699 - r = 1049
//Pour n =700 - r = 351

// pair : r(n) = n/2 + 1
// Impair r(n) = (3n+1)/2 
