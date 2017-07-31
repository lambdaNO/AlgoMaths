// # Approximation d'une racine carré - Méthode de Héron
printf("%s\n"," ## Approximation d''une racine carré - Méthode de Héron")
// --------------------------------------------------------------------------------
funcprot(0);
function z = f(t,y)
    z =t^2 - y
endfunction
printf("%s\n"," ## Fonction : f(t,y) = t^2 - y")
function z = fprime(t)
    z = 2*t
endfunction
printf("%s\n"," ## Fonction : f''(t) = 2*t")


// --------------------------------------------------------------------------------
//Par défaut, la valeur initiale de xO est 2
xO = input("Saisir la valeur initiale de x0 = ");
//On cherche à approximer la valeur de \sqrt{a}
a = input("Saisir la valeur de a pour t -> \sqrt{t}");
//On pose une précision à 0.0001
p = input("Saisir la valeur de précision p = ");
// Par défaut, on pose N = 50
N = input("Saisir le nombre d''itérations maximal");
// --------------------------------------------------------------------------------
x = xO;
while (abs(f(x,a))>p & N > 0 )
    x = x - f(x,a)/fprime(x);
    N = N - 1;
end
// --------------------------------------------------------------------------------
printf("%s\n","Approximation d''une racine carré  : ")
printf("%s%i%s%.6f\n","[",a,"]^(1/2) = ",x)
