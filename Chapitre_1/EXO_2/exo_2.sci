// Résolution d'une équation f(x) = 0 par la méthode de dichotomie.
printf("%s\n"," ## Résolution d''une équation f(x) = 0")
printf("%s\n", "Exemple de saisie : 2*x + 3x^3")
//
fonc = input("Saisir la fonction à étudier : f(x) = ", "string");
born = input("Saisir les bornes de l''intervalle d''étude [a,b] = ")
prec = input("Saisir la valeur de précision p = ")
// --------------------------------------------------------------------------------
// On récupère les bornes
a = born(1);
b = born(2);
// --------------------------------------------------------------------------------
// On définit la fonction que l'on va étudier avec la méthode deff() - (comme on l'a vu dans l'introduction)
// y est une fonction de x. L'expression de la fonction est passée sous forme de chaine de caractères dans la variable fonc.
deff('[y] = f(x)',"y ="+fonc);
// --------------------------------------------------------------------------------
// On applique la méthode de dichotomie
// Attention : la fonction doit changer de signe pour que l'on puisse obtenir f(x) = 0. On doit donc nécessairement obtenir f(a)f(b) < 0 pour appliquer la méthode.

if (f(a)*f(b) > 0) then
    printf("%s%i%s%i%s\n","Impossible de trouver une solution à f(x) = 0 sur l''intervalle [",a,";",b,"].")
    printf("La fonction doit changer de signe !")
    
else
    // Tant que l'on pas pas atteint la précision demandée
    while ((b-a) > prec) 
        // On calcul le pivot
        m = (a+b)/2;
        // On applique la méthode de dichotomie
        if (f(a)*f(m) < 0) then 
           b = m;
        else 
           a = m;    
        end
    end
    printf("%s\n","Encadrement de x tel que f(x) = 0 ");
    printf("%f%s%f%s\n",a," < x < ",b,".")  
end

// -x^2 + 10*x - 23
// [2,4]
// 0.0001 
// 3.585754 < x < 3.585815.

// 2*x + x^3
// [5,7]
// 0.0001
// Impossible de trouver une solution à f(x) = 0 sur l'intervalle [5;7].
// La fonction doit changer de signe !

// -x^2 + 10*x - 23
//[5,7]
//0.0001
//6.414185 < x < 6.414246.

