// Résolution d'une équation du second degré : 
printf("%s\n"," ## Résolution d''une équation du second degré :")
// Saisie des coefficients dans un vecteur c :
c = input("Saisir les coefficients a,b et c tel que ax^2 + bx + c = 0");
// La saisie doit se faire sous forme [a,b,c]
// On récupère les coefficients
a = c(1);
b = c(2);
c = c(3);
// --------------------------------------------------------------------------------
// Calcul du discriminant d
d = b^2 - 4 * a * c 
printf("%s%0.2f\n","Delta = ", d);
printf("%s\n","Solution(s)");
if (d > 0) then
    //[1,2,-1]
    x1 = (-b-sqrt(d))/(2*a);
    x2 = (-b+sqrt(d))/(2*a);
    printf("Deux racines distinctes : x1 = %0.2f%s%0.2f\n", x1,", x2 = ",x2)
elseif (d == 0) then 
    //[1,-2,1]
        x1 = (-b)/(2*a);
        printf("Une racine double : x1 = %0.2f\n", x1)
    else 
    //[1,1,1]
        printf("Aucune racine réelle")
end
