// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Définir une fonction f(x) = x^2 + 5 dans l'éditeur
//      Calculer f(22/7)
//      Afficher le résultat avec 5 décimales 

// -------------------------------------------------------------------

function y = f(x)
    y = x^2 + 5 
endfunction

    r = f(22/7);

printf("%s\n","Résultat : ")
printf("%s%0.5f\n" , "f(22/7) = ", r)

// Le logiciel scilab garde en mémoire la définition de la fonction f si on saisit f(2) dans la console, on obtient 9.
