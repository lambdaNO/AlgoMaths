// # Méthode de décomposition LU - Algorithme de DOOLITTLE
printf("%s\n","## Méthode de décomposition LU - Algorithme de DOOLITTLE")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function z = somme(p,i,j)
    z = 0;
    for (k =1:(p-1))
       z = z + L(i,k)*U(k,j);
    end
endfunction
// -------------------------------------------------------------------
N = input("Saisir la dimension de la matrice carré sup A : N = ");
printf("%s%i\n","Dimension de la matrice A = ", N)
// Définition de la matrice identité de taille N*N
L = eye(N,N);
disp(L);
U = zeros(N,N);
disp(U);
mymat = zeros(N,N);
disp(mymat);
A = evstr(x_matrix('Saisir la matrice A : ',mymat));
disp(A);
// -------------------------------------------------------------------
for (i =1:(N-1))
    for (j = i:N)
        U(i,j) = A(i,j) - somme(i,i,j);
    end
    for (j = (i+1):N)
        L(j,i) = (1/U(i,i))*(A(j,i) - somme(i,j,i));
    end
end
U(N,N) = A(N,N)-somme(N,N);
// -------------------------------------------------------------------
disp("Matrice A = ");
disp(A);
disp("Matrice L = ");
disp(L);
disp("Matrice U = ");
disp(U);
disp("Matrice L * U");
disp(L*U)
if (A == (L*U)) then
    printf("%s\n""On a bien A = L x U")
else
    printf("%s\n""C''est pas encore ça, regarde les indices de tes sommes")
end
