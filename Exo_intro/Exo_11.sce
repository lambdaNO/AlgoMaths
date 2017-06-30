// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir deux nombres "a" et "b" dans la console 
//      Effectuer le test suivant :
//          Si (a est inferieur à 5) OU (b est supérieur à 6) Alors
//                  On affiche : "Bonjour !"
//          Sinon
//                  On affiche : "Salut !"

// Ou s'obtient avec une seule barre ( | )

// -------------------------------------------------------------------

u = input("Entrer les valeurs de a et b : [a,b] = ");
// la saisie doit se faire sous forme [a,b]
a = u(1);
b = u(2);
// On est sur un ou classique. On obtient faux ssi a>5 ou b<6 (genre : [6,5]). CF Table de vérité de ou
if(a < 5 | b > 6) then 
    printf("%s\n","Bonjour !")
else 
    printf("%s\n","Salut !")
end;
