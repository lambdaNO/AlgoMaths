// # Somme des termes d'une suite
printf("%s\n", "## Somme des termes d''une suite")
//-----------------------------------------------------------------------------
n = input("Saisir le nombre de termes à calculer");

// Maintenant, on effectue les calculs et on itère à l'aide d'une boucle for

for (i = 1:n)
    // Calcul de Vn
    V(i) = sum([0:i]);
    V2(i) = V(i)^2;
    // Calcul de Sn; Attention, on travaille sur des vecteurs. les opérations doivent donc se faire avec un . devant l'opérateur
    S(i) = sum([0:i].^3);
    Ec(i) = S(i) - V2(i);
    // On fait l'affichage pour chaque itérations : 
    
    printf("%s%i\n", "n = ", i)
    printf("%s%i%s%0.5f\n", "S(",i,") = ",S(i))
    printf("%s%i%s%0.5f\n", "V(",i,") = ",V(i))
    printf("%s%i%s%0.5f\n", "V(",i,")^2 = ",V2(i))
    printf("%s%i%s%i%s%0.5f\n", "Ecart = S(",i,") - V(",i,")^2 = ",Ec(i))
end
