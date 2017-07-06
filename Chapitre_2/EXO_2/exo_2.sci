//# Simulation de lancer de dés
printf("%s\n", "## Simulation de lancer de dés.")
//-------------------------------------------------------

n = input("Saisir le nombres de lancers à effectuer : n =");

//-------------------------------------------------------
//On initialise le vecteurs qui va recevoir les résultats 

som = zeros(1,18);
// On initialise un vecteur qui va recevoir les fréquences (On aura enlevé les possibilités d'avoir 0,1 ou 2 pour ne pas fausser les calculs).
// On créait le vecteur f pour stocker les fréquences calculées
// ftoujours cette idée que l'on commence à 1 bien que le premier résutat possible est 3.
f = zeros(1,16);
// Compteur de sommes;
cpt = 0;

for (i = 1:n)
    // On a les trois dés et on récupère les résultats dans un seul vecteur 1 lignes 3 colonnes.
    d(1,1) = int(6*rand()+1);
    d(1,2) = int(6*rand()+1);
    d(1,3) = int(6*rand()+1);
    cpt = d(1,1) + d(1,2)+ d(1,3);
    //On incrémente la modalité qui a été obtenue.
    som(1,cpt) = som(1,cpt)+1;
end

printf("%s\n","Résultats de la simulation :")
printf("%s%i%s\n","Nombre de lancers : ",n,".")
for (j = 3:18)

    f(1,j-2) = som(1,j)/n;
    printf("Somme obtenue %s%i%s%i\n", "S(",j,") = ",som(1,j))
    printf("# Fréquence %s%i%s%0.5f\n", ": F(",j,") = ",f)
end
// Maintenant, on gère l'affichage.

clf()
x = linspace(3,18,16);
plot2d3(x,f)

// Plus on augmente le nombre de lancers, plus on se rapproche d'une gaussienne (loi Normale).
