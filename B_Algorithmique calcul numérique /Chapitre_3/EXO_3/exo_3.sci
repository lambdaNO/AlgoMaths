// # Etude de la chute libre d'un parachutiste
printf("%s\n","## Etude de la chute libre d''un parachutiste")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function zv = fv(x)
    zv = zvO*tanh(x*g/zvO);
endfunction

function zu = fu(x)
    zu = zvO*x + (zvO^2/g)*log((1+exp(-2*x*g/zvO))/2);
endfunction
// Avec zvO, la valeur de la constante V0
// -------------------------------------------------------------------
// Constantes : 
g = 9.81;
ksm = 1/28;
zvO = sqrt(g/ksm);
// -------------------------------------------------------------------
// brn = [0,60]
brn = input("Saisir les bornes de l''intervalle de temps : [t_init,t_final] = ");
t_init = brn(1);
t_final = brn(2);
// uO = 0
uO = input("Saisir la valeur de la distance verticale initiale : uO = ");
//vO = 0
vO = input("Saisir la valeur de la vitesse verticale initiale : vO = ");
// N = 150
N = input("Saisir le nombre N de division de [a,b] : N = ");
disp(g)
disp(ksm)
disp(zvO)
disp(t_init)
disp(t_final)
disp(uO)
disp(vO)
disp(N)
// -------------------------------------------------------------------
h = (t_final - t_init)/N;
t = zeros(1,N+1);
u = zeros(1,N+1);
v = zeros(1,N+1);
// -------------------------------------------------------------------
for (i = 1:N)
    t(1,i+1) = t(1,1) + h*i;
    u(1,i+1) = u(1,i) + h*v(1,i);
    v(1,i+1) = v(1,i) + h*(g - ksm*v(1,i)^2);
end
// -------------------------------------------------------------------
// Distance verticale parcourue : 
fig1 = scf(0);
scf(fig1);
plot(t,u ,"+b"); // Distance empirique
plot(t,fu, "xr"); // Distance théorique
// -------------------------------------------------------------------
// Vitesse verticale du parachutiste
fig2 = scf(1);
scf(fig2)
plot(t,v ,"+b"); // Vitesse empirique
plot(t,fv, "xr"); // Vitesse théorique


