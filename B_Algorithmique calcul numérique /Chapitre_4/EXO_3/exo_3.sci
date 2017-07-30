// # Résolution d'un système L.X = B

printf("%s\n","## Résolution d''un système L.X = B")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
//Définition de la fonction somme : 
function z = somme(i)
    z = 0;
    for (j = 1:(i-1))
        z = z + L(i,j)*X(j,1);
    end
endfunction

N = input("Saisir la dimension de la matrice carré inf L : N = ");
printf("%s%i\n","Dimension de la matrice U = ", N)

L = zeros(N,N);
B = zeros(N,1);
X = zeros(N,1);

matL = zeros(N,N);
matB = zeros(N,1);
// Saisie des matrices
L = evstr(x_matrix('Saisir la matrice L : ',matL));
B = evstr(x_matrix('Saisir la matrice B : ',matB));

// On applique maintenant les principes de récurrence donnés dans l'énoncé 

X(1,1) = B(1,1)/L(1,1);
// Pour i allant de 2 à N
for(i = 2:N)
   //printf("%s%i\n","itération n° ",N-i+1)
     X(i,1) = (1/L(i,i))*(B(i,1)-somme(i));
   //disp(X)
end
disp("Matrice X : ")
disp(X)

