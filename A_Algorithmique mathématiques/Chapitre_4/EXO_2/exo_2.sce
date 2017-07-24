// Restes de la division Euclidienne par p
printf("%s\n", "## Restes de la division Euclidienne par p")
//------------------------------------------------------------------
// L'algorithme consiste à calculer successivement des restes modulo p

printf("%s\n","Forme : u_{n} = a \times n + b")
d = input("Saisir les valeurs de a,b et p : [a,b,p] = ");

n = input("Saisir le nombre de termes à calculer");

// On récupère les données saisies par l'utilisateur
a = d(1);
b = d(2);
p = d(3);
// -------------------------------------------------
// On définit le vecteur r de taille n qui va contenir les restes des divisions euclidiennes par p. On l'initialise avec n fois 0.
// => r est un vecteur 1 ligne X n colonnes
r = zeros(1,n);

for (i = 1:n)
    r(1,i) = modulo(a*i+b,p);    
end
// -------------------------------------------------
// On affiche les résultats : 
printf("%s\n" , "Résultats :")
printf("%s%i%s\n", "Les ",n," premiers termes de la suite : ")
printf("%s%i%s%i%s%i%s\n","[(u_{n}) = " , a , "x n + ", b , " | p = ", p,"].")
disp(r)


// [12,5,20] 
// 30
// RESULTATS
// 17.   9.   1.   13.   5.   17.   9.   1.   13.   5.
// 17.   9.   1.   13.   5.   17.   9.   1.   13.   5.
// 17.   9.   1.   13.   5.   17.   9.   1.   13.   5.


// [5,-3,20]
// 30
// RESULTATS
// 2.   7.   12.   17.   2.   7.   12.   17.   2.   7.
// 12.   17.   2.   7.   12.   17.   2.   7.   12.   17.
// 2.   7.   12.   17.   2.   7.   12.   17.   2.   7.


// [12,-3,7]
// 30
// RESULTATS
// 2.   0.   5.   3.   1.   6.   4.   2.   0.   5.   3.
// 1.   6.   4.   2.   0.   5.   3.   1.   6.   4.   2.
// 0.   5.   3.   1.   6.   4.   2.   0.
