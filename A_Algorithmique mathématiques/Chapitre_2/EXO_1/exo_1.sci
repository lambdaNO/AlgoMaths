// # Le jeu du lièvre et de la tortue.
printf("%s\n","## Le jeu du lièvre et de la tortue.")
//-------------------------------------------------------


n = input("Saisir le nombre de parties à jouer : n = ");
p = input("Saisir le nombre de cases à parcourir par la tortue : p = ");
// i est la variable de comptage 
i = n;
// t est le nombre de parties gagnées par la tortue
t = 0;
// c est le nombre de cases parcours par la tortue
c = 0;


while(i <> 0)
    // Toujours le théorème du grillage
    d = int(6*rand()+1);    
    if (d <> 6) then
        // On avance d'une case
        c = c + 1;
        // c==p signifie que la tortue est arrivée sur la ligne d'arrivée
        if (c == p) then 
           // On augmente alors le nombre de parties gagnées par la tortue
           t = t + 1; 
           // On remet le compteur de cases à 0
           c = 0;
           // On décrémente le nombre de parties possiblement jouées
           i = i - 1;
        end
     else 
        c = 0;
        k = k - 1;
     end
end 
    
printf("%s\n", "Résultats de la simulation :")
printf("Fréquence des parties gagnées par la tortue : %f\n", t/n)
printf("Fréquence théorique : %f\n", (5/6)^p)
