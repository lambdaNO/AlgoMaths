// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Saisir une fonction f(x) = x^2 + 5 dans la console
//      Calculer f(22/7)
//      Afficher le résultat avec 5 décimales 

// Note : Pour avoir des apostrophes dans les sortie consoles, il faut mettre ''
// -------------------------------------------------------------------

w = input("Entrer l''expression de la fonction f(x) =", "string");
//on doit saisir dans la console : x^2 + 5
deff('y=f(x)',"y ="+w)

r = f(22/7);

printf("%s\n","Résultat : ")
printf("%s%0.5f\n" , "f(22/7) = ", r)


