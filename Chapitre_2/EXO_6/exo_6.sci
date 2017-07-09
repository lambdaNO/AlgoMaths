//# La désintégratlon radioactive
printf("%s\n","## Simulation de la désintégratlon radioactive")
//-------------------------------------------------------
v = input("Entrer le nombre d''atomes à l''instant 0 ainsi que le nombre d''expériences à effectuer : [NO,T] =");
//[1000,50]
//[1000,25]
//[2000,100]

//-------------------------------------------------------
NO = v(1);
T = v(2);
// Vecteur pour la simulation 
n = zeros(1,T+1);
n(1) = NO;
//-------------------------------------------------------
// On va à présent simuler la désintégration radioactive 

for (i = 2:(T+1))
    // Le calcul à l'instant n+1 se fait en fonction du nombre présent à l'instant n. On copie donc la valeur de n dans n+1
    n(1,i) = n(1,i-1);
    for(j=(1:n(1,i-1)))
        // Théorème du grillage
        d = int(6*rand()+1);  
        if (d == 6) then
            // Si par hasard, on a obtenu un 6. On soustrait un atome à la quantité
            n(1,i) = n(1,i) - 1;
        end
        // Et on répète l'expérience pour chaque atomes présents initialement à l'instant n-1;
    end    
end
// Maintenant, on gère l'affichage.
// Cette fois ci, on part de 0 pour représenter la quantité initiale 
clf()
t = linspace(0,T,T+1);
plot(t,n,"+b")
plot(t,NO*exp(-t/6),"r")
