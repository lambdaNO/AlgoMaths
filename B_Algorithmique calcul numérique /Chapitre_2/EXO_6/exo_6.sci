// # Point fixe et suite définie par récurrence
printf("%s\n"," ## Point fixe et suite définie par récurrence")
// --------------------------------------------------------------------------------
funcprot(0);
// --------------------------------------------------------------------------------
function z = f(y)
    z = - 1 + (y^2 + 2)*exp(-y)
endfunction
// --------------------------------------------------------------------------------
n = input("Saisir le nombre de d''itérations : n = ");
// --------------------------------------------------------------------------------
x = 1;
for (k = 1:n)
    x = x + f(x)
end
// --------------------------------------------------------------------------------
printf("%s/n","Valeur approchée de xO")
printf("%s%.10f\n","x0 = ",x)
// => Plus on augmente le nombre d'itération, plus on améliore l'approximation
// 23 -> x0 = 1.3189810876
// 24 -> x0 = 1.3190083654
// 56 -> x0 = 1.3190736759
// 1000 -> x0 = 1.3190736769
// 1000000 -> x0 = 1.3190736769 On arrive au maximum
