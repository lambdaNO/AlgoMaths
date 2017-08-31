// # Résolution d'une équation différentielle d'ordre 2
printf("%s\n","## Résolution d''une équation différentielle d''ordre 2")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
function z = f(u,v,k)
    z = -v/k +u/k^2 + 2/k;
endfunction
function z = y(r)
    z = r/2 + 1/(2*r) + r*log(r);
endfunction
// -------------------------------------------------------------------
//[1,10]
brn = input("Saisir les bornes de l''intervalle : [a,b] = ");
a = brn(1);
b = brn(2);

////disp(a)
////disp(b)
// 150
N = input("Saisir le nombre N de division de [a,b] : N = ");
////disp(N)
//1
uO = input("Saisir la valeur u0 : ")
////disp(uO)
//1
vO = input("Saisir la valeur v0 : ")
////disp(vO)

// -------------------------------------------------------------------
h = (b-a)/N;
t = zeros(1,N+1);
u = zeros(1,N+1);
v = zeros(1,N+1);
// -------------------------------------------------------------------
t(1,1) = a;
u(1,1) = uO;
v(1,1) = vO;
// -------------------------------------------------------------------
for (i = 1:N)
    t(1,i+1) = t(1,1) + h * i ;
    u(1,i+1) = u(1,i) + h * v(1,i);
    v(1,i+1) = v(1,i) + h * f(u(1,i),v(1,i),t(1,i));
end
// -------------------------------------------------------------------
clf();
plot(t,u,"+b"); // approximation de la solution
plot(t,y,"*r"); // solution exacte



