// # Conjecture d'Erdös-Straus

printf("%s\n","## Conjecture d''Erdös-Straus")
// -------------------------------------------------------------------
//Nmaxi = 25;
//n = 2;

n = input("Saisir la valeur de la borne minimale n = ");
Nmaxi = input("Saisir la valeur de la borne maximale Nmaxi = ");

while(n <= Nmaxi)
    a = 4/n;
    tst = %f;
    x = 1;
    while (tst==%f & x<=n^2)
        b = a - 1/x;
        y = 1;
        while (tst==%f & y<=n^2)
           c = b - 1/y;
           z = 1;
           while (tst==%f & z<=n^2)
               if(c == 1/z) then
                    tst = %t;
               else
                    z = z + 1;                    
               end
           end
           if(tst == %f) then
                y = y + 1;
           end     
        end    
        if(tst == %f) then
            x = x + 1;
        end
    end
    if(tst == %t) then
       disp('Pour n = '+string(n)+' : '+'x = '+string(x)+', y = '+string(y)+', z = '+ string(z)+'.')
       n = n + 1; 
    end
end
