// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Définir la fonction f(x) = x^2 - 7*x - 2
//      Tracer la courbe représentative de la fonction f dans une fenêtre graphique

// -------------------------------------------------------------------

function y = f(x)
    y = x^2 - 7*x - 2;
endfunction

// Créait un vecteur de 150 valeurs équidistantes comprises entre [-10,10].
x = linspace(-10,10,150);

clf()
plot(x,f)
