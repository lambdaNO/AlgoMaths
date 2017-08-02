// Ensemble de Mandelbrot
printf("%s\n"," ## Ensemble de Mandelbrot")

// --------------------------------------------------------------------------------
// Paramètres
    // facteur = 100
facteur = input("Saisir la valeur du facteur = ");
    // n_iterations = 50
n_iterations = input("Saisir le nombre d''itérations = ");
    // [-1,1]
x = input("Saisir l''ensemble des x : [xmin,xmax] = ");
xmin = x(1);
//disp(xmin)
xmax = x(2);
//disp(xmax)
    // [-1.2,1.2]
y = input("Saisir l''ensemble des y : [ymin,ymax] = ");
ymin = y(1);
//disp(ymin)
ymax = y(2);

cO = 0.285 + %i*0.010;

//disp(ymax)
taille_x = int((xmax - xmin)*facteur);
//disp(taille_x)
taille_y = int((ymax - ymin)*facteur);
//disp(taille_y)
// Déterminatio des complexes appartenant à l'ensemble de Julia
vecteur_x = linspace(xmin,xmax,taille_x);
//disp(vecteur_x)
vecteur_y = linspace(ymin,ymax,taille_y);
//disp(vecteur_y)
M = zeros(taille_y,taille_x);
//disp(M)

for (j = 1:taille_y)
    for (i = 1:taille_x)
        c = vecteur_x(i) + %i*vecteur_y(j);
        k = 0;
        while(abs(c) < 2 & k < n_iterations )
           c = c^2 + cO; 
           k = k + 1; 
        end
        if (k == n_iterations) then
            //M(taille_y + 1 - j,i) = 1; //Point de l'ensemble (noir)
            M(taille_y + 1 - j,i) = 22;             
        else
            //M(taille_y + 1 - j,i) = 8; // Point hors de l'ensemble (blanc)
            M(taille_y + 1 - j,i) = 8;
        end    
    end
end

f = scf();
//disp(M)
Matplot(M); // Les "1" sont dessinés en noir, les "8" en blanc

f.children.isoview = "on";
f.children.axes_visible = ["off" "off" "off"];
/* // Permet d'afficher l'ensemble des couleurs disponibles en SCILAB
Matplot((1:xget("lastpattern")))
*/

clear M c cO f facteur i j k n_iterations taille_x taille_y vecteur_x vecteur_y x xmax xmin y ymax ymin 
