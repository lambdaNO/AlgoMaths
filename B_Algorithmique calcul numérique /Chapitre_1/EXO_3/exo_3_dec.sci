// Cryptographie - Le carré de Polybe
//décryptage
funcprot(0);
// Définition de la fonction de décryptage
function t = decryptage(c);
    printf("%s\n","Fonction de décryptage du mot : ")
    disp(t);
    tableau = ['A' 'B' 'C' 'D' 'E';'F' 'G' 'H' 'I' 'J';'K' 'L' 'M' 'N' 'O';'P' 'Q' 'R' 'S' 'T';'U' 'V' 'X' 'Y' 'Z'];
   t = "";
   i = 1;
   
   while (i < length(c))
      x = evstr(part(c,i)); //premier chiffre 
      y = evstr(part(c,i+1)); //second chiffre 
      i = i + 3;
      t = t + tableau(x,y); 
   end
   
endfunction
//----------------------------------------------------------
// Création du programme qui va faire appel à la fonction de cryptage
printf("%s\n","## Cryptographie - Le carré de Polybe !")
txt = input("Saisir le texte à déchiffrer");
disp(txt);
tcode = decryptage(txt);
printf("%s\n","Texte déchiffré : ")
disp(tcode);
