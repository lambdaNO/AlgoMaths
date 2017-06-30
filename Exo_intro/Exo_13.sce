// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir deux nombres "a" et "b" dans la console avec a > b
//      Effectuer la répétitive suivante : 
//      Tant que (a > b) Faire
//          décrémenter a de 1
//          incrémenter k de 1 (avec k, un compteur)
//          => Objectif : Compter le nombre de répétitions pour aller de a vers b  


// -------------------------------------------------------------------

s = input("Entrer les valeurs de a et b (avec a > b) \n [a,b] = ");
a = s(1);
b = s(2);
k = 0;
while (a > b)
    a = a - 1;
    k = k + 1;
end
printf("%s%i%s%i%s%i\n","Il y a ", k, " itérations entre b = ", s(2) ," et a = ",s(1))
printf("%i%s%i%s%i\n", s(2) , " + " , k , " = " ,s(1))

