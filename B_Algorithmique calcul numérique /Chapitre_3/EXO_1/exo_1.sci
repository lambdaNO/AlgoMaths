// # Approximation de la fonction exponentielle par la méthode d'Euler
printf("%s\n","## Approximation de la fonction exponentielle par la méthode d''Euler")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function z = f(t,y)
    z = y;
endfunction
// -------------------------------------------------------------------
// brn = [0,5]
brn = input("Saisir les bornes de l''intervalle : [a,b] = ");
a = brn(1);
b = brn(2);
//disp(a)
//disp(b)
// uO = 1
uO = input("Saisir la valeur du terme : uO = ");
//disp(uO)
// N = 150
// N = 300
N = input("Saisir le nombre N de division de [a,b] : N = ");
//disp(N)
h = (b-a)/N;

// -------------------------------------------------------------------

t = zeros(1,N+1);
y = zeros(1,N+1);
t(1,1) = a;
y(1,1) = uO;

for (i = (1:N))
    t(1,i+1) = t(1,1) + h * i ;
    y(1,i+1) = y(1,i) + h * f(t(1,i),y(1,i));
end

// -------------------------------------------------------------------
//disp(t)
//disp(y)
clf()
plot(t,y,"+b");
plot(t,exp(t),"r")
