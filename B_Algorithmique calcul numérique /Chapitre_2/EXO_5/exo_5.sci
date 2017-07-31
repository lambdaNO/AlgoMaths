// # Détermination de la constante d’Euler-Mascheroni
printf("%s\n"," ## Détermination de la constante d''Euler-Mascheroni")
// --------------------------------------------------------------------------------
funcprot(0);
// --------------------------------------------------------------------------------
function z = somme(y)
    z = 0;
    for (k=1:y)
        z = z + 1/k;
    end
endfunction
// --------------------------------------------------------------------------------
n = input("Saisir le nombre de d''itérations : n = ");
// --------------------------------------------------------------------------------
gma = somme(n) - log(n);
// --------------------------------------------------------------------------------
printf("%s/n","Constante d''Euler-Mascheroni")
printf("%s%.100f\n","Gamma =",gma)
