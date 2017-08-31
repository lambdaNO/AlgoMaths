// # Modèle proie-prédateur. Equations de Lotka-Volterra
printf("%s\n","## Modèle proie-prédateur. Equations de Lotka-Volterra")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function z = f(u,v)
    z = u*(a - b*v);
endfunction
function w = g(u,v)
    w = v*(-c+d*u);
endfunction
// -------------------------------------------------------------------
brn = input("Saisir les bornes de l''intervalle de temps : [t_init,t_final] = ");
t_init = brn(1);
t_final = brn(2);
disp(t_init)
disp(t_final)
N = input("Saisir le nombre N de division de [T1,T2] : N = ");
disp(N)
uO = input("Saisir la population initiale de proies ")
disp(uO)
vO = input("Saisir la population initiale de prédateurs ")
disp(vO)
// -------------------------------------------------------------------
a = input("Saisir le taux de croissance des proies ")
disp(a)
b = input("Saisir le taux de mortalité des proies ")
disp(b)
c = input("Saisir le taux de croissance des prédateurs ")
disp(c)
d = input("Saisir le taux de mortalité des prédateurs ")
disp(d)
// a = 0.8
// b = 0.4
// c = 0.6
// d = 0.2
// u0 = 3
// v0 = 5
// [0,20]
// N =150



// -------------------------------------------------------------------
h = (t_final-t_init)/N;
t = zeros(1,N+1);
u = zeros(1,N+1);
v = zeros(1,N+1);
// -------------------------------------------------------------------
t(1,1) = t_init;
u(1,1) = uO;
v(1,1) = vO;
// -------------------------------------------------------------------
for (i = 1:N)
    t(1,i+1) = t(1,1) + h * i ;
    u(1,i+1) = u(1,i) + h * f(u(1,i),v(1,i));
    v(1,i+1) = v(1,i) + h * g(u(1,i),v(1,i));
end
// -------------------------------------------------------------------
clf();
plot(t,u,"+b"); // Proies
plot(t,v,"*r"); // Prédateurs


