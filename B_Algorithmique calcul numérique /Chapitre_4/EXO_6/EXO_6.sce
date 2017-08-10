// # Méthode de décomposition LU - Algorithme de DOOLITTLE
printf("%s\n","## Méthode de décomposition LU - Algorithme de DOOLITTLE")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------

function z = somme(p,i,j)
    z = 0;
    for (k = 1:(p-1))
        z = z + L(i,k)*U(k,j);
    end
endfunction
function z = sommeL(i)
    z = 0;
    for (j = i:(i-1))
        z = z + L(i,j)*Y(j,1);
    end
endfunction
function z = sommeU(i)
    z = 0;
    for (j = (i+1):N)
        z = z + U(i,j)*X(j,1);
    end
endfunction
// -------------------------------------------------------------------
N = input("Saisir la dimension de la matrice carré A : N = ");
printf("%s%i\n","Dimension de la matrice A = ", N)
// Définition de la matrice identité de taille N*N
L = eye(N,N);
disp(L)
U = zeros(N,N);
disp(U)
X = zeros(N,1);
disp(X)
Y = zeros(N,1);
disp(Y)
// --------------
mymat = zeros(N,N);
disp(mymat);
A = evstr(x_matrix('Saisir la matrice A : ',mymat));
disp(A);
matB = zeros(N,1);
disp(matB)
B = evstr(x_matrix('Saisir la matrice B : ',matB));
disp(B)
// -------------------------------------------------------------------
// Décomposition LU

for (i = 1:(N-1))
    for (j = i:N)
        U(i,j) = A(i,j) - somme(i,i,j);    
    end
    for (j = (i+1):N) 
       L(j,i) = (1/U(i,i))*(A(j,i)-somme(i,j,i)); 
    end      
end
U(N,N) = A(N,N) - somme(N,N,N);
disp(L)
disp(U)
// -------------------------------------------------------------------
// Résolution de LY = B
Y(1,1) = B(1,1)/L(1,1);
for (i=2:N)
    Y(i,1) = (1/L(i,i))*(B(i,1)-sommeL(i));
end 
disp(Y)
// -------------------------------------------------------------------
// Résolution de UX = Y
X(N,1)=Y(N,1)/U(N,N);
for (i = (N-1):-1:1)
    X(i,1) = (1/U(i,i))*(Y(i,1)-sommeU(i));
end
disp(X)
// -------------------------------------------------------------------
disp("Matrice A = ")
disp(A)
disp("Matrice B = ")
disp(B)
disp("Matrice X = ")
disp(X)
