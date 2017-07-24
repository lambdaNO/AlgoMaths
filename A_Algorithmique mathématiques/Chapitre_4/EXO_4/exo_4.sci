//## Nombres premiers - Critère de primalité
printf("%s\n","# Nombres premiers - Critère de primalité")

// On définit tout d'abord la fonction estPremier qui va nous permettre de réduire les calculs aux nombres premiers.

function y=estPremier(m)
    y = 1;
    // Par défaut, y est premier
    if(modulo(m,2) == 0) then
        // Si on est capable de diviser par 2 le nombre, alors cela signifie que ce n'est pas un nombre premier.
        y = 0;
    else
        // On a 1 comme diviseur; on sait qu'à ce moment là, 2 n'est pas un diviseur.
        // On va donc essayer de chercher si il y d'autre diviseurs supérieurs ou égaux à 3. Pour ce faire, on utilise la méthode que l'on définie dans l'algorithme sur le critère de primalité
        for (i=3:2:int(sqrt(m)))
            // De la même manière, si on a trouvé un diviseur compris entre 3 et sqrt(m), alors cela signifie que ce n'est pas un nombre premier. On ne test que les nombres impair (x:2:y) - par pas de 2 (3,5,7, ... sqrt(m)) car la première condition permet de tester les nombres pair (un pair est forcément divisble par 2).
            if (modulo(m,i)==0) then
                y = 0;
                break;
            end
        end
    end
endfunction


//--------------------------------------------------------

n = input("Saisir la valeur de n : n = ");
ns = n;
r = [];
// Car 1 est le diviseur suprême
r(1)=1;

if(estpremier(n)==0) then
    // On vient de tester 1, donc on passe à k = 2
    k = 2;
    // Tant que l'on est pas retombé sur le diviseur suprême
    while (n <> 1)
        // On initialisé un vecteur vide d
        d = [];
        // et le pas nul
        p = 0;
        // Et on cherche progressivement a trouver les autres diviseurs
        while (modulo(n,k)==0)
            n = n/k;
            p = p+1;
            d = [d;r.*k^p];
        end
        // On ajoute les nouveaux diviseurs trouvés et stockés en d dans r.
        r = [r;d];
        //et on itère  sur la prochaine valeurs de d
        k = k+1;
    end
else
    r(2)=n;
end
printf("%s%i\n","Liste des diviseurs de ", ns)
disp(r)
