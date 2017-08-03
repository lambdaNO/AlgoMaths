// ## Résolution d'un système par la méthode d'élimination de Gauss
printf("%s\n","## Résolution d''un système par la méthode d''élimination de Gauss")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
// Définition de la fonction somme 
function z = somme(i)
    z = 0
    for (j = (i+1):N)
        z = z + AT(i,j)*X(j,1)
    end
endfunction
// -------------------------------------------------------------------
N = input("Saisir la dimension de la matrice carré sup A : N = ");
printf("%s%i\n","Dimension de la matrice A = ", N)
// -------------------------------------------------------------------
// lignes * colonnes
AT = zeros(N,N);
BT = zeros(N,1);
matA = zeros(N,N);
matB = zeros(N,1);
X = zeros(N,1);
// -------------------------------------------------------------------
A = evstr(x_matrix('Saisir la matrice A : ',matA));
B = evstr(x_matrix('Saisir la matrice B : ',matB));
AT = A;
BT = B;
// -------------------------------------------------------------------
// Décomposition AT*X=BT
for (k =1:(N-1))
    for (i = (k+1):N)
        q = AT(i,k)/AT(k,k);
        BT(i,1) = BT(i,1) - q*BT(k,1);
        AT(i,k) = 0;
        for (j=(k+1):N)
            AT(i,j) = AT(i,j) - q*AT(k,j);
        end 
    end
end
printf("%s\n","## Matrice diagonnale A après élimination de GAUSS")
disp(AT)
// -------------------------------------------------------------------
// Résolution AT*X=BT
X(N,1)= BT(N,1)/AT(N,N);
for (r=(N-1):-1:1)
    X(r,1) = (1/AT(r,r))*(BT(r,1) - somme(r));
end
printf("%s\n","Résultats : ")
disp("## Matrice A :")
disp(A)
disp("## Matrice B :")
disp(B)
printf("%s\n","# Résolution du système par la méthode d''élimination de Gauss")
disp("Matrice X = ")
disp(X)

