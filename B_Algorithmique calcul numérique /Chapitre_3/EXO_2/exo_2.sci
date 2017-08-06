// # Etude d'un circuit RC
printf("%s\n","## Etude d''un circuit RC")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function z = f(y)
    z = -(y/T)+(E/T);
endfunction
function m = g(n)
    m = E*(1-exp(-n/T));
endfunction
// -------------------------------------------------------------------
// brn = [0,10]
brn = input("Saisir les bornes de l''intervalle : [a,b] = ");
a = brn(1);
b = brn(2);
//disp(a)
//disp(b)
// uO = 0
uO = input("Saisir la valeur du terme : uO = ");
//disp(uO)
// N = 150
// N = 300
N = input("Saisir le nombre N de division de [a,b] : N = ");
//disp(N)
// E = 6 V
E = input("Saisir la valeur de la tension E en volt : E = ");
disp(E)
T = input("Saisir la valeur de la constante de temps du circuit en seconde tau = ");
disp(T);
h = (b-a)/N;
// -------------------------------------------------------------------

t = zeros(1,N+1);
u = zeros(1,N+1);
t(1,1) = a;
u(1,1) = uO;

for (i = (1:N))
    t(1,i+1) = t(1,1) + h * i ;
    u(1,i+1) = u(1,i) + h * f(u(1,i));
end
// -------------------------------------------------------------------
clf()
plot(t,u,"+b");
plot(t,g(t),"r")

