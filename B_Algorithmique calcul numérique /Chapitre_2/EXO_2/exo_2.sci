// # Méthode de dichotomie
printf("%s\n"," ## Méthode de dichotomie")
// --------------------------------------------------------------------------------
funcprot(0);
function z = f(t)
    z = t - exp(1)*sin(t)
endfunction
printf("%s\n"," ## Fonction : f(t) = t - exp(1)*sin(t)")
// --------------------------------------------------------------------------------
born = input("Saisir les bornes de l''intervalle d''étude [a,b] = ")
p = input("Saisir la valeur de précision p = ")
// --------------------------------------------------------------------------------
// On récupère les bornes
a = born(1);
b = born(2);
// --------------------------------------------------------------------------------

// Tant que l'on pas pas atteint la précision demandée
while ((b-a) > p) 
        printf("%s%.3f%s%.3f%s","I = [ ",a," , ",b," ].")
        // On calcul le pivot
        m = (a+b)/2;
        printf("%s%0.5f","    m =", m)
        // On applique la méthode de dichotomie
        if (f(a)*f(m) < 0) then 
           b = m;
           printf("%s\n","  b = m")
        else 
           a = m;
           printf("%s\n","  a = m")    
        end
end
printf("%s\n","Encadrement de x tel que f(x) = 0 ");
printf("%f%s%f%s\n",a," < x < ",b,".")  
