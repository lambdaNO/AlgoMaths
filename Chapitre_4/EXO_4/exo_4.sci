//## Nombres premiers - Critère de primalité
printf("%s\n","# Nombres premiers - Critère de primalité")

// On va commencer par créer la fonction booléenne 

function y = estpremier(m)
    y = 1;
    if (modulo(m,2)==0) then
        y = 0;
    else
        for(i = 3:2:int(sqrt(m)))
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
