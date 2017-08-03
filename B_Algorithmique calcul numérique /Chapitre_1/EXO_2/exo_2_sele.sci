// # Tri par sélection
printf("%s\n","## Tri par sélection")
// -------------------------------------------------------------------
lst = input("Saisir la listes de n valeurs à trier : [a1,a2,a3,.,an] = ")
N = length(lst);
cpt = 0;
// -------------------------------------------------------------------

for i = 1:(N-1) 
    for j = (i+1):N  
        printf("%s%i%s%i%s%i%s%i ","lst( ",i," ) = ",lst(i)," - lst( ",j," )= ",lst(j))
        if (lst(j)<lst(i)) then
            printf("%s","Modification")
            tmp = lst(i);
            lst(i) = lst(j);
            lst(j) = tmp; 
            cpt = cpt + 1;
        end
        printf("\n")       
    end
end
printf("%s\n","Liste triée :")
disp(lst)
printf("%s%i\n","Nombre d''échanges : ",cpt)
