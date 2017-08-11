# Modèle proie-prédateur.<br> Equations de Lotka-Volterra
Il s'agit de développer un algorithme, puis un programme, de résolution du système d'équations différentielles suivantes :
$$\left\{
  \begin{array}{rcl}
    u'(t) & = & u(t)[a-b\cdot v(t)]\\
    v'(t) & = & v(t)[-c + d\cdot u(t)]\\
    u(0) & = & u_{0}\\
    v(0) & = & v_{0}
  \end{array}
\right.\textrm{  }\textrm{ et } t \in [0,20]
$$
##### Définitions des grandeurs :
- $u(t)$ : effectif de la population de proies à l'instant $t$.
- $v(t)$ : effectif de la population de prédateurs à l'instant $t$.
- $u'(t)$ : variation de la population des proies au cours du temps.
- $v'(t)$ : variation de la population des prédateurs au cours du temps.
- Taux de croissante de la population des proies en l'absence de prédateur donné par la constante $a$ ($a>0$, donc la population augmente) et ce taux décroît linéairement en fonction du nombre de prédateur $v(t)$ à l'instant $t$
$$\frac{u'(t)}{u(t)} = a-b\cdot v(t)$$
- En l'absence de proies, les taux de croissante de la population de prédateur est donné par ka constante $-c$ ($-c <0$, donc la population diminue) et ce taux croît linéairement en fonction du nombre de proies $u(t)$ à l'instant $t$
$$\frac{v'(t)}{v(t)} = -c+d\cdot v(t)$$
<br>
On considère les valeurs numériques suivantes :

- $a = 0.8$
- $b = 0.4$
- $c = 0.6$
- $d = 0.2$
- $u_{0} = 3$
- $v_{0} = 5$

On obtient alors le système suivant :

$$\left\{
  \begin{array}{rcl}
  u'(t) & = & u(t)[0.8 - 0.4\cdot v(t)]\\
  v'(t) & = & v(t)[- 0.6 + 0.2\cdot u(t)]\\
  u(0) & = & 3\\
  v(0) & = & 5 \\
  \end{array}
\right.\textrm{  }\textrm{ et } t \in [0,20]
$$
### Présentation de la méthode
On utilise la méthode d'Euler :
1. On découpe l'intervalle $[T_{1},T_{2}]$ en $N$ parties et on pose :
$$h = \frac{T_{2}-T_{1}}{N}$$
On obtient ainsi $N+1$ points
$$t_{i} = T_{1} + i\cdot\frac{T_{2}-T_{1}}{N} = T_{1} + i\cdot h \textrm{   avec } i \in [0;N]$$
2. Si on note $u_{i}$ l'approximation de la valeur $u(t_{i})$ en $t_{i}$, on obtient :
$$u'(t_{i}) \approx \frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}}$$
et
$$u'(t_{i}) = f(u(t_{i}),v(t_{i}))$$
 Si on note $v_{i}$ l'approximation de la valeur $v(t_{i})$ en $t_{i}$, on obtient :
$$v'(t_{i}) \approx \frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}}$$
et
$$v'(t_{i}) = g(u(t_{i}),v(t_{i}))$$
Les approximations s'écrivent :
1. $$\frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}} = f(u_{i},v_{i})$$
d'où
$$ u_{i+1} = u_{i} + (t_{i+1}-t_{i})f(u_{i},v_{i})$$
avec :
$$f(u_{i},v_{i}) = u_{i}[0.8 - 0.4v_{i}]$$
2. $$\frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}} = g(u_{i},v_{i})$$
d'où
$$ v_{i+1} = v_{i} + (t_{i+1}-t_{i})g(u_{i},v_{i})$$
avec :
$$g(u_{i},v_{i}) = v_{i}[-0.6 + 0.2u_{i}]$$

Nous allons devoir créer les fonction $f(u_{i},v_{i})$ et $g(u_{i},v_{i})$ telles que :
$$f(u_{i},v_{i}) = u_{i}[0.8 - 0.4v_{i}]$$
et
$$g(u_{i},v_{i}) = v_{i}[-0.6 + 0.2u_{i}]$$

## Algorithme
#### Préambule
**Définir** la fonction f <br>
**Définir** la fonction g <br>
#### Entrées
Saisir les valeurs de : <br>
- a
- b
- c
- d
- u0
- v0
- t_init
- t_final
- N
#### Traitement
**Définir** la fonction f<br>
**Définir** la fonction g<br>
h ← (t_final - t_init)/N <br>
t(1,1) ← t_init <br>
u(1,1) ← u0 <br>
v(1,1) ← v0 <br>
**Pour** i **de** 1 **jusqu'à** N **Faire**<br>
t(1,i+1) ← t(1,1)* h * i<br>
u(1,i+1) ← u(1,i) + h * f(u(1,i),v(1,i))<br>
v(1,i+1) ← v(1,i) + h * g(u(1,i),v(1,i))<br>
**Fin pour**
##### Sortie
**Tracer** les nuages de points (t(1,i);u(1,i)) et (t(1,i);v(1,i))<br>
