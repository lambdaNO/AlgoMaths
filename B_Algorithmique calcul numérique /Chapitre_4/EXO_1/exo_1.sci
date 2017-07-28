// Méthode d''élimination de Gauss
printf("%s\n","## Méthode d''élimination de Gauss")

// Saisie des dimensions de la matrice A à étudier. Ce sont des matrices carrées donc une seule valeur suffit.

N = input("Saisir la dimension de la matrice carré A : N = ");
printf("%s%i\n","Dimension de la matrice A = ", N)

// Initialisation des matrices pour les sorties
// zeros(nbligne,nbcolonne)
AT = zeros(N,N);
BT = zeros(N,1);
// Initialisation des matrices pour les entrées
matA = zeros(N,N);
matB = zeros(N,1);
// Procédure de saisie des matrices initiales 
A = evstr(x_matrix('Saisir la matrice A : ',matA));
B = evstr(x_matrix('Saisir la matrice B : ',matB));
// Application du programme
disp("Matrice A : ")
disp(A)
disp("Matrice B : ")
disp(B)
disp("Matrice AT : ")
disp(AT)
disp("Matrice BT : ")
disp(BT)
disp("Affectation AT <- A, BT <- B")
AT = A;
BT = B;

for (k = 1:(N-1))
    for(i = (k+1):N)
        q = AT(i,k)/AT(k,k);
        BT(i,1) = BT(i,1) - q*BT(k,1);
        AT(i,k) = 0;        
        for(j=(k+1):N)
            AT(i,j) = AT(i,j) - q*AT(k,j);
        end    
    
    end    
printf("%s%i\n","Itération k = ", k)
disp("Matrice AT : ")
disp(AT)
disp("Matrice BT : ")
disp(BT)
end




clear N A AT B BT matA matB
