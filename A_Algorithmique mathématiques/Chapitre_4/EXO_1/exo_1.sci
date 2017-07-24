//Algorithme d'Euclide : Calcul du PGCD
printf("%s\n","## Algorithme d''Euclide : Calcul du PGCD.")
//Saisie de a et b, deux entiers naturels
v = input("Saisir un couple d''entiers naturels : [a,b] = ");

// Là, on va gérer les saisie. En effet, on n'impose pas d'ordre dans la saisie des entiers. On peut donc avoir a>b ou a<b. On va donc s'assurer que les entiers soient dans le bon ordre pour le reste de l'algorithme.

if (v(1) >= v(2)) then
     A = v(1);
     B = v(2);
else 
    A = v(2);
    B = v(1);
end

// On sauve les termes de départ pour l'affichage du résultat

    x = A;
    y = B;
    
// Puis on va effectuer les divisions Euclidiennes successives tant que l'on aura pas atteint le reste nul.
// On va stocker le dénominateur r dans b pour la suite des calculs.   
while (B > 0)
    r = modulo(A,B);
    A = B;
    //On passe au dénominateur suivant
    B = r; 
    //Avec cette condition, on est sur de récupérer dans a, la valeur du dernier diviseur non nul (c'est à dire le PGCD)
end
printf("%s%0.f%s%0.f%s%0.f\n","PGCD(",x,";",y,") = ",A)


//PGCD(4562;1022) = 2
//PGCD(1071;1029) = 21
