// # Suite définie par une moyenne arithmétique
printf("%s\n","## Suite définie par une moyenne arithmétique");
// -----------------------------------------------------------

// On commence déjà par définir la fonction f(x) = 2x^2 + 3x + 1

function y = f(x)
    y = 2*x^2 + 3*x + 1;
endfunction

n = input("Saisir le nombre de termes à calculer");

// Initialisation des deux vecteurs vides u
u = [];

for i = (1:n)
    // On définit maintenant la suite u_{n}, L'opérateur somme est bizarrement défini par la fonction sum([d:f]);
    //Attention, on travaille sur des vecteurs. les opérations doivent donc se faire avec un . devant l'opérateur
    u(i) = 6*sum([1:i].^2)/i;
    printf("%s%i\n", "n = ", i)
    printf("%s%i%s%0.5f\n", "u(",i,") = ",u(i))
    printf("%s%i%s%i%s%i%s%0.5f\n", "f(",i,") = 2*",i,"^2 + 3*",i," + 1 = ",f(i))
end
    // Maintenant on affiche les graphiques

clf()

x = linspace(1,n,n);
y = linspace(0,n,2*n);

plot(x,u,"+b")
plot(y,f,"+r")

clear i
clear n 
clear u
clear x
clear y
