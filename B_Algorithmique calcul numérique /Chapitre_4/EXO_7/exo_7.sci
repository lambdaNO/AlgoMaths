// Approximation d'une intégrale par la méthode des trapèzes
printf("%s\n","## Approximation d''une intégrale par la méthode des trapèzes")
//----------------------------------------------------------
// Attention : Redéfinition de la fonction : f
// Pour eviter ce message, utiliser funcprot(0) pour ne pas afficher ce message.
funcprot(0);
// On définit la valeur de la fonction que l'on souhaite étudier.
function z = f(t)
    z = t*log(t);
    //z = exp(t)*t^2;
endfunction
// On saisit les valeurs de départ pour a,b et N
a = input("Saisir la borne inférieure de l''intégrale I : \n a = ");
b = input("Saisir la borne supérieure de l''intégrale I : \n b = ");
printf("%s%i%s%i%s\n","Approximation de l''intégrale I pour l''intégrande f(t)=t*ln(t) sur [ ",a," ; ",b," ].")
N = input("Saisir le nombre de trapèzes :\n N = ");

// On peut donc calculer maintenant la valeur du coefficient h
h = (b-a)/N;
printf("%s%.4f\n","Pas : h = ", h)
// On initialise la somme à 0
s = 0;
// Et on commence le calcul pour les N-1 parties et à stocker les résultats dans s
for(i = 1:(N-1))
   printf("%s%i\n%s%.2f%s%.5f\n","Trapèze n° ", i,"   f(",a+i*h,") = ", f(a+i*h))
   s = s + f(a+i*h);
end

I = h*((f(a)+f(b))/2+s);
printf("%s\n%s%.5f\n","Approximation de l''intégrale I", "  I = ", I)

clear a b N I ans h i s
