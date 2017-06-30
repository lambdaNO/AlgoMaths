// Ecrire un programme das l'éditeur effectuant les opérations suivantes : 
//      Définir la fonction f(x,y) = (x^3-2*y^2)/(x^2+1);
//      Tracer la surface représentative de la fonction f dans une fenêtre graphique

// -------------------------------------------------------------------

function z = f(x,y)
    z = (x^3 - 2*y^2)/(x^2+1);
endfunction

x = linspace(-5,5,25);
y=x;

clf()

fplot3d1(x,y,f)


