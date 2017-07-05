// ## La suite de Syracuse
printf("%s\n","## La suite de Syracuse")
d = input("Saisir l''entier de départ d = ");
n = input("Saisir le nombre de termes de la suite à affichier n = ");

// On définit un vecteur contenant n fois 0 pour récupérer les termes de la suites 
// C'est un vecteur d'une ligne n colonnes
t = zeros(1,n);
// On connait le premier termes de la suite (parce qu'on a demandé à l'utilisateur de le saisir)
t(1,1) = d;

// On va en effet jusqu'au terme n-1 car on a déjà saisi le terme de départ
for i = 1:(n-1) 
    //Si le modulo par 2 est 0 <=> Si c'est pair
    if modulo(t(1,i),2) == 0 then 
        // Le terme ne dépend que de son prédecesseurs
        t(1,i+1) = t(1,i)/2;
    else 
        t(1,i+1) = 3*t(1,i)+1;
    end
end 
// On gère maintenant l'affichage : 
printf("%s%i%s%i%s\n", "Les ",n," premiers termes de la suite de Syracuse pour d = ",d," sont : ")
disp(t)

//(14,30) : 14.   7.   22.   11.   34.   17.   52.   26.   13.   40.   20.   10.   5.   16.   8.   4.   2.   1.   4.   2.   1.   4.    2.   1.   4.   2.   1.   4.   2.   1.
//(14,45) :  14.   7.   22.   11.   34.   17.   52.   26.   13.   40.   20.   10.   5.   16.   8.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.   1.
//(36,30) : 36.   18.   9.   28.   14.   7.   22.   11.   34.   17.   52.   26.   13.   40.   20.   10.   5.   16.   8.   4.   2.   1.   4.   2.   1.   4.   2.   1.   4.   2.

clear d
clear i
clear n
clear t
