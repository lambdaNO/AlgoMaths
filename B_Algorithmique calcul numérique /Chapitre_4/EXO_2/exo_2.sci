// # Résolution d'un système U.X = B

printf("%s\n","## Résolution d''un système U.X = B")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
//Définition de la fonction somme : 
function z = somme(i)
    z = 0;
    for (j = (i+1):N)
        z = z + U(i,j)*X(j,1);
    end
endfunction

N = input("Saisir la dimension de la matrice carré sup U : N = ");
printf("%s%i\n","Dimension de la matrice U = ", N)

U = zeros(N,N);
B = zeros(N,1);
X = zeros(N,1);

matU = zeros(N,N);
matB = zeros(N,1);
// Saisie des matrices
U = evstr(x_matrix('Saisir la matrice U : ',matU));
B = evstr(x_matrix('Saisir la matrice B : ',matB));

// On applique maintenant les principes de récurrence donnés dans l'énoncé 

X(N,1) = B(N,1)/U(N,N);
// Pour i allant de N-1 à 1 par pas de -1 (CF intro)
for(i = (N-1):-1:1)
   //printf("%s%i\n","itération n° ",N-i+1)
     X(i,1) = (1/U(i,i))*(B(i,1)-somme(i));
   //disp(X)
end
disp("Matrice X : ")
disp(X)
