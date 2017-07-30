// # Couples d'entiers amicaux
printf("%s\n","## Couples d''entiers amicaux")
// ------------------------------------------------------------------- 
// On saisit les données : 
n = input("Saisir la valeur de n = ");
m = input("Saisir la valeur de m = ");
// ------------------------------------------------------------------- 
// On calcul progressivement les diviseurs de n et on effectue la somme cumulée
a = 0;
b = 0;
//printf("%s%i\n","Diviseurs de ", n)
for (i = 1:(n-1))
    if (modulo(n,i)==0) then
        a = a + i;
        //disp(i)
    end
end
//printf("%s%i\n","Diviseurs de ", m)
for (j = 1:(m-1))
    if (modulo(m,j)==0) then
        b = b + j;
        //disp(j)
    end
end

if (a==m & b == n) then
    printf("%i%s%i%s\n",m," et ",n," sont des entiers amicaux")
else 
    printf("%i%s%i%s\n",m," et ",n," ne sont pas des entiers amicaux")
end
