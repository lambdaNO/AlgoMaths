// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Générer un nombre aléatoire n compris entre 1 et 6
//      Structure répétitive : 
//          Tant que le nombre n est inférieur ou égal à 4, on génère un autre nombre.
//      Afficher le nombre total de nombres générés

// Note : Théorème du grillage : tu as toujours un poteau de plus que de carré de grillage (c'est pour cela qu'on rajoute + 1 après avoir géré 6*rand())
// -------------------------------------------------------------------

k = 0 //cpt
n = 0 // On initialise n à 0. Comme ça on est sûre d'avoir au minimum une simulation

while (n <= 4)
    n = int(6*rand()+1);
    k = k + 1;
    printf("%s%i%s%i\n","Simulation n°", k , " = ", n)    
end


printf("%s\n","Résultat : ")
printf("%s%i\n","k = ",k)
