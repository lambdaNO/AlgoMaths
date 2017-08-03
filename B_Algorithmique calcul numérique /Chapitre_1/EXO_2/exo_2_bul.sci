// # Tri à bulles
printf("%s\n","## Tri à bulles")
// -------------------------------------------------------------------
lst = input("Saisir la listes de n valeurs à trier : [a1,a2,a3,.,an] = ")
N = length(lst);
ech = %t;
cpt = 0;
// -------------------------------------------------------------------
while(ech == %t)
   ech = %f;
   for i = 1:(N-1)  
       printf("%s%i%s%i%s%i%s%i ","lst( ",i," ) = ",lst(i)," - lst( ",i+1," )= ",lst(i+1)) 
       if (lst(i) > lst(i+1)) then
            printf("%s"," Modification")
            tmp = lst(i);
            lst(i) = lst(i+1);
            lst(i+1) = tmp; 
            cpt = cpt + 1; 
            ech = %t;
       end
       printf("\n")
   end
end
printf("%s\n","Liste triée :")
disp(lst)
printf("%s%i\n","Nombre d''échanges : ",cpt)
