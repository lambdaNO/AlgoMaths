// # Ensemble des diviseurs positifs d'un entier naturel
printf("%s\n","## Détermination des diviseurs positifs d''un entier naturel")
//-------------------------------------------------------

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

//-------------------------------------------------------

n = input("Entrer la valeur de l''entier naturel : n =");
//On sauvegarde la valeur de n dans ns pour l'affichage final
ns = n;
// On définit un vecteur res pour collecter les diviseurs de n
res =[];
// Par défaut, 1 est forcément le diviseur suprême. Donc on l'ajoute à res.
res(1) = 1;

//-------------------------------------------------------
// Maintenant, nous allons calculer l'ensemble des diviseurs de n.
if (estPremier(n)==0) then
    k = 2;
    while(n<>1)
       d = []; 
       p = 0;
       
       while(modulo(n,k)==0)
          n = n/k; 
          p = p+1;
          d = [d,res.*k^p]; 
       end
       res = [res,d];
       k = k+1; 
    end
else 
    res(2) = n;
end
printf("%s%i%s%i\n","Nombre de diviseurs de ",ns," = ", length(res))
printf("%s%i\n","Liste des diviseurs de ",ns)
disp(res)




