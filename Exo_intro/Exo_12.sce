// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir deux nombres "a" et "b" dans la console 
//      Effectuer le test suivant :
//          Si (a est inferieur à 5) ET (b est supérieur à 6) Alors
//                  On affiche : "Bonjour !"
//          Sinon
//                  On affiche : "Salut !"

// Ou s'obtient avec une seule esperluette ( & )

// -------------------------------------------------------------------

u = input("Entrer les valeurs de a et b : [a,b] = ");
// la saisie doit se faire sous forme [a,b]
a = u(1);
b = u(2);
// On est sur un et classique. On obtient vrai ssi a<5 et b>6 (genre : [4,7]). CF Table de vérité de et
if(a < 5 & b > 6) then 
    printf("%s\n","Bonjour !")
else 
    printf("%s\n","Salut !")
end;
