// # Recherche d'une stratégoe de jeu.
printf("%s\n","## Recherche d''une stratégie de jeu.")
//-------------------------------------------------------
n = input("Saisir le nombre de parties à jouer : n =");
//-------------------------------------------------------
// On définit un vecteur pour compter les gains
g = zeros(1,2);
// On définit un vecteur pour compter les fréquences
f = zeros(1,2);
// Un vecteur vide pour simuler les résultats des urnes
u = [];
//-------------------------------------------------------
for (i =1:n)
    // On fait les trois tirages
    // C'est le théorème du grillage
    u(1,1) = int(10*rand()+1);
    u(1,2) = int(10*rand()+1);
    u(1,3) = int(10*rand()+1);
    
    // On test la configuration de l'évènement G1 - ABC
    // On ne peut avoir que deux combinaisons possibles NBN ou BNB
    if((u(1,1) <= 4) & (u(1,2) >= 8) & (u(1,3) <= 5) | (u(1,1) >= 5) & (u(1,2) <= 7) & (u(1,3) >= 6)) then
    g(1,1)=g(1,1)+1;    
    end
    // On test la configuration de l'évènement G2 - ACB
    // On ne peut avoir que deux configuration possible NBN ou BNB
    
    // L'ordre des urnes d(1,1),d(1,2), d(1,3) n'est pas important car elles sont identiques. On ne fait que tester les tirages. Seule les conditions changent.
    if ((u(1,1) <= 4) & (u(1,2) >= 6) & (u(1,3) <= 7) | (u(1,1) >= 5) & (u(1,2) <= 5) & (u(1,3) >= 8)) then 
        g(1,2) = g(1,2) + 1;
    end
end
//-------------------------------------------------------
// Maintenant, on calcul les fréquences
GI = g(1,1)/n;
GII = g(1,2)/n;

printf("%s\n","Résultats de la simulation :")
printf("%s%i%s\n","Nombre de parties jouées : ",n,".")
printf("%s%0.6f\n","Fréquence de l''évènement G1 : F(G1) = ",GI)
printf("%s%0.6f\n","Fréquence de l''évènement G1 : F(G2) = ",GII)


