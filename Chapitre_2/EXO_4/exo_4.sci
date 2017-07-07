// # La planche de Galton
printf("Simulation de planche de Galton")

//-------------------------------------------------------

n = input("Saisir le nombres de billes à lancer : n =");

//-------------------------------------------------------
// La planche possède 6 boîtes
bte = zeros(1,6);
// Le vecteur va recevoir les fréquences 
frq = zeros(1,6);
// Ce vecteur va recevoir les directions que les billes vont prendre aux différents clous;
clou = [];
// Cette variable va nous stocker le résultat de la somme des valeurs de directions aux clous et nous indiquer dans quelle boite nous devons ranger la bille
res = 0;

//-------------------------------------------------------

for (i = 1:n)
    clou(1,1) = int(2*rand());
    clou(1,2) = int(2*rand()); 
    clou(1,3) = int(2*rand());
    clou(1,4) = int(2*rand()); 
    clou(1,5) = int(2*rand());  
    
    res = clou(1,1) + clou(1,2) + clou(1,3) + clou(1,4) + clou(1,5);
    // On maintenant plus qu'à placer le clou en fonction du résultat res - CF remarques (On incrémente la bonne boite)
    bte(1,res+1) = bte(1,res+1) + 1; 
end
disp(bte)

printf("%s\n","Résultats de la simulation :")
printf("%s%i%s\n","Nombre de lancers de bille : ",n,".")

for (j = 1:6)
    printf("Boîte n° %i\n",j)
    printf("    Nombre de billes %i\n",bte(j))
    frq(1,j) = bte(1,j)/n;
    printf("%s%i%s%0.5f\n","    Fréquence obtenu e: F(B",j,") = ", frq(1,j))
end

// Maintenant, on gère l'affichage :

clf()
x = linspace(1,6,6);
plot2d3(x,frq,rect=[0,0,7,0.5])
