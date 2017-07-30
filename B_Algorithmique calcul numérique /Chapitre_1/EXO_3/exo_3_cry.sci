// Cryptographie - Le carré de Polybe
//cryptage
funcprot(0);
// Définition de la fonction de cryptage
function c = cryptage(t);
    printf("%s\n","Fonction de cryptage du mot : ")
    disp(t);
    tableau = ['A' 'B' 'C' 'D' 'E';'F' 'G' 'H' 'I' 'J';'K' 'L' 'M' 'N' 'O';'P' 'Q' 'R' 'S' 'T';'U' 'V' 'X' 'Y' 'Z'];
    c = "";
    k = 1;
    while(k <= length(t))
       // On prend le caractère n°k dans la chaine de caractère t; 
       L = part(t,k); 
       // On parcours le tableau à la recherche du bon caractère
        for (i = 1:5)
            //En largeur
            for (j = 1:5)
                // En hauteur
                // On teste le pour chaque valeur de couple (i,j), la valeur dans le tableau de caractères
                if (L == tableau(i,j)) then 
                    // Lorsque l'on trouve le caractère dans le tableau correspondant au couple (i,j), alors on concatène ce dernier dans la chaine de caractère.
                    // On utilise la fonction string pour effectuer un transtypage. C'est plus simple pour l'affichage
                    c = c + string(i)+ string(j) + " ";
                end
            end    
        end
        // On passe au caractère suivant.
        k = k + 1;
    end    
endfunction
//----------------------------------------------------------
// Création du programme qui va faire appel à la fonction de cryptage
printf("%s\n","## Cryptographie - Le carré de Polybe !")
txt = input("Saisir le texte à chiffrer");
disp(txt);
tcode = cryptage(txt);
printf("%s\n","Texte chiffré :")
disp(tcode);
