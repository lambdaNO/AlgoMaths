// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Simuler 1000 lancers d'une pièce équilibrée (Pile = 0, Face = 1)
//      Afficher la fréquence de l'évènement F : " Obtenir Face" avec 3 décimales

// Note : Théorème du grillage : tu as toujours un poteau de plus que de carré de grillage (c'est pour cela qu'on rajoute + 1 après avoir géré 6*rand())
// -------------------------------------------------------------------

n = 0;
k = 0;
for (i = 1:1000)
    k = int(2*rand()+1)
    if(k == 1) then 
        n = n+1; 
    end
end
r = n/1000;
printf("%s%0.3f\n","Fréquence de l''évènement : ''Obtenir Face'' = ", r)
