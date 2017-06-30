// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Générer 5 nombres aléatoires compris entre 1 et 6
//      Afficher les 5 nombres générés

// Note : Théorème du grillage : tu as toujours un poteau de plus que de carré de grillage (c'est pour cela qu'on rajoute + 1 après avoir géré 6*rand())
// -------------------------------------------------------------------

v = zeros(1,5);
//v = 0 // Ca fonctionne aussi mais c'est un vecteur de 1 composante.
disp(v)
for (i = 1:5)
    v(1,i) = int(6*rand()+1);
end

printf("%s\n","Résultat : ")
disp(v)
