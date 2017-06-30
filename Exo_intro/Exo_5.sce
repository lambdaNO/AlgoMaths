// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir deux réels a et b dans la console
//      Calculer la valeur de r = a/(a+b)^2
//      Afficher a,b (avec 5 décimales) et r(avec 4 décimales) en affichant le nom des variables  

// -------------------------------------------------------------------

s = input("Saisier les valeur de a et de b (deux entier naturels) : [a,b] = ");
//[47/5,13/7]
r = s(1)/(s(1)+s(2))^2;

printf("%s\n","Résultat : ")
printf("%s%0.5f%s%0.5f%s%0.4f\n","a = ", s(1),", b= ", s(2), " et r = ", r)
//a = 9.40000, b= 1.85714 et r = 0.0742
