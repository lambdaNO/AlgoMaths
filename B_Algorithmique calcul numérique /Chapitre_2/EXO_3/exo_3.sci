// # Méthode de Newton
printf("%s\n"," ## Méthode de Newton")
// --------------------------------------------------------------------------------
funcprot(0);
function z = f(t)
    z = t - exp(1)*sin(t)
endfunction
printf("%s\n"," ## Fonction : f(t) = t - exp(1)*sin(t)")
function z = fprime(t)
    z = 1 - exp(1)*cos(t)
endfunction
printf("%s\n"," ## Fonction : f''(t) = 1 - exp(1)*cos(t)")


// --------------------------------------------------------------------------------
// Par défaut, on étudie cette fonction sur [1.5,5]
p = input("Saisir la valeur de précision p = ");
// Par défaut, on pose N = 50
N = input("Saisir le nombre d''itérations maximal");
// La valeur initiale de xO est 1.5 (correspond à la borne inférieure")
xO = input("Saisir la valeur initiale de x0 = ");
// --------------------------------------------------------------------------------
x = xO;
while (abs(f(x))>p & N > 0 )
    x = x - f(x)/fprime(x);
    N = N - 1;
end
// --------------------------------------------------------------------------------
printf("%s\n","Solution par la méthode de Newton : ")
printf("%s%.6f\n","x = ",x)
