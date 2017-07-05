//## Suites définies conjointement
printf("%s\n","## Suites définies conjointement")

//On demande à l'utilisateur de saisir les deux suites : 
su = input("Expression : u(n+1) = k * (b*u(n) + c*v(n)). \n Saisir les valeurs [k,b,c] = ");
sv = input("Expression : v(n+1) = k * (b*u(n) + c*v(n)). \n Saisir les valeurs [k,b,c] = ");
d = input("Saisir les valeurs de [u(0),v(0)]");
n = input("Saisir le nombre de termes à calculer");

// Initialisation des deux vecteurs vides u et v qui vont recevoir les termes des suites calculées
u = [];
v = [];

// Initialisation de l'axe des abscisses pour la représentation finale
// On veut certes n termes, mais on connait déjà la valeur de u(0) et v(0), on a donc besoin que de n-1 termes pour n valeurs.
x = linspace(0,n-1,n);

// On initialise donc les vecteurs avec les valeurs saisies
u(1) = d(1);
v(1) = d(2);
// Affichage pour voir si l'ajout a bien été réalisé.
//disp(u);disp(v);
//Maintenant, on va effectuer les calculs à l'aide d'une structure de boucle.
printf("%s%i\n", "n = ", 0)
printf("%s%i%s%0.12f\n", "u(",0,") = ",u(1))
for(i = 1:(n-1))
    u(i+1) = su(1)*(su(2)*u(i) + su(3)*v(i));    
    v(i+1) = sv(1)*(sv(2)*u(i) + sv(3)*v(i));    
    // Petit bonus, on calcul le rapport u(n+1)/u(n) pour déterminer l'allure de la suite
    qu = u(i+1)/u(i);
    qv = v(i+1)/v(i);
    printf("%s%i\n", "n = ", i)
    printf("%s%i%s%0.12f%s%0.5f\n", "u(",i,") = ",u(i+1), ", u(n+1)/u(n) = ", qu)
    printf("%s%i%s%0.12f%s%0.5f\n", "v(",i,") = ",v(i+1), ", v(n+1)/v(n) = ", qv)
end
// Maintenant, on affiche le tout : 
clf()
// La fonction "+b" permet d'obtenir une courbe bleue
// La fonction "+r" permet d'obtenir une courbe rouge
plot(x,u,"+b")
plot(x,v,"+r")

// > [0.2,1,4]
// > [0.2,3,2]
// > [1,-0.75]
// u_{n} = (-\frac{2}{5})^{n} et v_{n}= -\frac{3}{4}(-\frac{2}{5})^{n}  sont des suites géométriques
// > 30

clear d
clear i 
clear n 
clear qu
clear qv
clear su
clear sv
clear u
clear v 
clear x
