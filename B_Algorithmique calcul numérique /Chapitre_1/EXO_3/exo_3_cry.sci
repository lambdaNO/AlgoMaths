// Cryptographie - Le carré de Polybe
//cryptage
funcprot(0);
// Définition de la fonction de cryptage

function c = cryptage(t);
    printf("%s","Fonction de cryptage du mot : ")
    disp(t)
    printf("\n")
    tableau = ['A' 'B' 'C' 'D' 'E';'F' 'G' 'H' 'I' 'J';'K' 'L' 'M' 'N' 'O'; 'P' 'Q' 'R' 'S' 'T' ; 'U' 'V' 'X' 'Y' 'Z'];
    //disp(tableau)
    c="";
    //disp(c)
    k = 1;
    //disp(k)
    //disp(length(t))
    while (k <=length(t))
        
        //disp(k)
//> On prend le caractère n°k dans la chaine de caractère t; 
        L = part(t,k);
        //disp(L)
        //>Parcours en ligne
        for (i = 1:5)
            //disp(i)
            //>Parcours en colonne
           for (j=1:5)     
               //disp(j)
// On teste le pour chaque valeur de couple (i,j), la valeur dans le tableau de caractères
               if (L == tableau(i,j)) then
//> Lorsque l'on trouve le caractère dans le tableau correspondant au couple (i,j), alors on concatène ce dernier dans la chaine de caractère.
// On utilise la fonction string pour effectuer un transtypage. C'est plus simple pour l'affichage
                   c = c + string(i) + string(j) + " ";   
               end    
           end
        end   
        //disp(c)
        // On passe au caractère suivant.
        k = k + 1;
    end
    printf("%s","Texte chiffré : ");
    disp(c)
    printf("\n")        
endfunction

/// exemple 
/// > cryptage('BONJOUR') =>  12 35 34 25 35 51 43 
/// > cryptage('ALGORITHMIQUE') =>  11 32 22 35 43 24 45 23 33 24 42 51 15 
