//Evolution d'une population de lapin.
printf("%s\n","## Evolution d''une population de lapins - Fibonacci")
// On demande à l'utilsateur de saisir le nombre de mois au bout duquel, il souhaite connaître le nombre de couple
n = input("Saisir le nombre de mois d''étude n = ");
// Initialisation de la population aux mois 1 et 2.

p1 = 1;
p2 = 1;

// Cas où l'utilisateur saisi n = 1 ou n = 2

if (n == 1 | n == 2) then
    printf("%s%i%s%i\n","Le nombre de couples de lapins au mois n° ",n," est égal à ", p1)
    // Idem 
    //printf("%s%i%s%i\n","Le nombre de couples de lapin au mois n°",n,"est égal à ", p1)
    
else 
    for (i = 3:n)
        pn = p1 + p2;
        p1 = p2;
        p2 = pn;
        // Je fais un genre de transtypage ici. J'utilise un float (réel) pour sa plus grande capacité mais je lui demande de donner 0 chiffres significatifs.
        //printf("%s%i%s%0.0f\n","Le nombre de couples de lapin au mois n° ",i," est égal à ", pn)
    end
    printf("%s%i%s%0.0f\n","Le nombre de couples de lapins au mois n° ",n," est égal à ", pn)
end

clear i
clear n
clear p1
clear p2
clear pn
