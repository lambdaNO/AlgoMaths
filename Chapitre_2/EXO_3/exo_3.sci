//# Le jeu des triangles
printf("%s\n", "## Le jeu des triangles.")
//-------------------------------------------------------

n = input("Saisir le nombres de pâtes contenues dans le paquet : n =");
//-------------------------------------------------------

// On initialise une variable qui va compter le nombre de triangles obtenus

t = 0;

// On simule le passage dans le machine n fois;
for (i= 1:n)
    x = 1*rand();
    y = (1 - x)*rand();
    z = 1 - x - y;
    
    // On vérifie si on peut construire un triangle à partir des morceaux de pâtes obtenus
    // 0.5 = .5 en scilab
    if((x<0.5)&(y<.5)&(z<0.5)) then 
       t = t + 1; 
    end
    disp(i)
end
res = t/n;
printf("%s\n","Résultats de la simulation :")
printf("%s%i%s\n","Nombre de pâtes  : ",n,".")
printf("Fréquence d''obtention d''un triangle %0.5f\n",res)
