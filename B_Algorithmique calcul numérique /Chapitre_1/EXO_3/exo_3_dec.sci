// Cryptographie - Le carré de Polybe
//décryptage
funcprot(0);
// Définition de la fonction de décryptage
function t = decryptage(c);
    printf("%s\n","Fonction de décryptage du mot : ")
    disp(c)
    printf("\n")

    tableau = ['A' 'B' 'C' 'D' 'E';'F' 'G' 'H' 'I' 'J';'K' 'L' 'M' 'N' 'O'; 'P' 'Q' 'R' 'S' 'T' ; 'U' 'V' 'X' 'Y' 'Z'];
    //disp(tableau)
    t ="";
    //disp(t)
    i = 0;
    //disp(i)
    
    
    while (i <= length(c))
        //> Le premier chiffre
        disp(part(c,i))
        //x = evstr(part(c,i));
        //> Le second chiffre    
        //y = evstr(part(c,i+1));
        //disp(x)
        //disp(y)
        //i = i + 3;
        //disp(i)
        //t = t + tableau(x,y);

        

        
        //disp(i)
        i = i + 1;
    end
    
    
endfunction
