// # Détermination d'une équation de droite 

printf("%s\n","# Détermination d''une équation de droite ")
//------------------------------------------------------------------------------
A = input("Saisir les coordonnées du point A : [x_a,y_a] = ");
B = input("Saisir les coordonnées du point B : [x_b,y_b] = ");
born = input("Saisir les bornes de l''intervalle d''étude : [a,b] = ")
// Cas ou x_b - x_a == 0


x = linspace(born(1),born(2),100);

clf()
if (B(1)-A(1)==0) then
    // Equation de droite parallèle à l'axe des ordonnées
    printf("%s\n","Equation de droite : ")
    printf("%s%0.5f\n","x = ",A(1))
    //Affichage de la fonction
    w = string(A(1));
    //deff("x=f(x)", "x="+w)
    elseif (B(2)-A(2)==0) then
    // Equation de droite parallèle à l'axe des abscisses
        printf("%s\n","Equation de droite : ")
        printf("%s%0.5f\n","y = ",A(2))
        w = string(A(2));
        deff("y = f(x)", "y ="+w)
    else 
    // Equation de droite affine 
        a = (B(2)-A(2))/(B(1)-A(1));
        b = A(2) - a*A(1);
        printf("%s\n","Equation de droite : ")
        printf("%s%0.5f%s%0.5f\n","y = ",a,"x + ",b)
        w = string(a)+"*x+"+string(b);
        deff("y = f(x)", "y ="+w)
                
end


plot(x,f)



clear A
clear B
clear a
clear b
clear x
clear w
