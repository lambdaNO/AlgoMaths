//# Suite définie par une relation de récurrence
printf("%s\n","## Suite définie par une relation de récurrence");

//On demande à l'utilisateur de saisir le premier terme de la suite : 
d = input("Saisir les valeurs de u(1) = ");
//On demande à l'utilisateur de saisir le nombre de termes à calculer : 
n = input("Saisir le nombre de termes à calculer");

// Initialisation des deux vecteurs vides x
x = [];

// Initialisation de l'axe des abscisses pour la représentation finale
// On veut certes n termes, on connait déjà la valeur de u(0) mais cette fois ci, il y a une relation de récurrence pour définir le premier terme. On aura donc besoin d'un vecteur de taille n
x = linspace(1,n,n);

u(1)=d;

// Comme dit dans le titre, on calcul par récurrence, le premier terme sera donc calculer à partir de i = 2 ...


printf("%s%i\n", "n = ", 0)
printf("%s%i%s%0.12f\n", "u(",0,") = ",u(1))


for (i = 2:n)
    u(i) = 1/(2 - u(i-1));
    v(i) = 1/(u(i) - 1);
    
    // Affichage numérique : 
    
    printf("%s%i\n", "n = ", i)
    printf("%s%i%s%0.10f\n", "u(",i,") = ",u(i))
    printf("%s%i%s%i%s%0.10f\n", "v(",i,") = 1/(u(",i,")-1) =",v(i))
end


// Maintenant, on génère le graphique : 

clf()
plot(x,u,"+b")

clear x 
clear u 
clear v
clear i
clear d
clear n


// On a : (1)/(u_{n}-1) = - n <=> u_{n} = -(1/n) + 1 
