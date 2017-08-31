# Résolution d'une équation différentielle d'ordre 2

Il s'agit de développer un algorithme, puis un programme, de résolution du système d'équations différentielles suivantes :

$$\left\{
  \begin{array}{rcl}
  t^{2}u''(t)+tu'(t) - u(t)& = & 2t \\
&&\\
    u'(1) & = & 1 \\
&&\\
      u(1) & = & 1\\

  \end{array}
\right.
\textrm{ avec } t \in [1;10]$$
Nous allons écrire un algorithme permettant de résoudre numériquement l'équation différentielle puis tracer le nuage de points associé à l'approximation de la solution u ainsi que la courbe représentative de la fonction $y$ définie par : <br>
$$y(t) = \frac{t}{2}+ \frac{1}{2t} + t\ln(t)$$

### Présentation de la méthode
On utilise la méthode d'Euler :<br>
1. L'équation différentielle peut s'écrire sous la forme suivante :

$$\left\{
  \begin{array}{rcl}
  v(t) & = & u'(t)\\
  &&\\
  v'(t) & = & -\frac{1}{t}v(t)+\frac{1}{t^{2}}u(t)+\frac{2}{t}\\
  &&\\
    v(1) & = & 1 \\
  &&\\
      u(1) & = & 1\\
  \end{array}
\right.
$$


2. On découpe l'intervalle $[a,b]$ en $N$ parties et on pose :
$$h = \frac{b-a}{N}$$
On obtient ainsi $N+1$ points
$$t_{i} = a + i\cdot\frac{b-a}{N} = a + i\cdot h \textrm{   avec } i \in [0;N]$$

2. Si on note $v_{i}$ l'approximation de la valeur $v(t_{i})$ en $t_{i}$, on obtient :
$$v'(t_{i}) \approx \frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}}$$
et
$$v'(t_{i}) = -\frac{1}{t}v(t)+\frac{1}{t^{2}}u(t)+\frac{2}{t}$$
On note $u_{i}$, l'approximation de la valeur $u(t_{i})$ en $t_{i}$, on obtient :
$$u'(t_{i}) \approx \frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}}$$
et
$$u(t_{i}) = v(t_{i})$$
Finalement, les approximations s'écrivent :
$$\frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}} = -\frac{1}{t_{i}}v_{i}+\frac{1}{t_{i}^{2}}u_{i}+\frac{2}{t_{i}}$$
d'où :
$$v_{i+1} = v_{i} + (t_{i+1}-t_{i})\left(-\frac{1}{t_{i}}v_{i}+\frac{1}{t_{i}^{2}}u_{i}+\frac{2}{t_{i}} \right)$$
$$v_{i+1} = v_{i} + h\left(-\frac{1}{t_{i}}v_{i}+\frac{1}{t_{i}^{2}}u_{i}+\frac{2}{t_{i}} \right)$$
$$ \frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}} = v_{i}$$
d'où
$$u_{i+1} = u_{i} + (t_{i+1}-t_{i})v_{i} $$
$$u_{i+1} = u_{i} + hv_{i} $$


Nous allons devoir créer les fonction $f$ telles que :

$$ f(t_{i},u_{i},v_{i}) = -\frac{1}{t_{i}}v_{i}+\frac{1}{t_{i}^{2}}u_{i}+\frac{2}{t_{i}}$$
et
$$y(t) = \frac{2}{t} + \frac{1}{2t} + t\ln(t)$$

### Algorithme
#### Préambule
**Définir** la fonction z = f(u,v,t)<br>
**Définir** la fonction w = y(t)<br>
#### Entrées
Saisir les valeurs de : <br>
- uO
- vO
- a
- b
- N
#### Traitement
**Définir** la fonction f<br>
**Définir** la fonction fy<br>
h ← (b - a)/N <br>
t(1,1) ← a <br>
u(1,1) ← u0 <br>
v(1,1) ← v0 <br>
**Pour** i **de** 1 **jusqu'à** N **Faire**<br>
t(1,i+1) ← t(1,1)* h * i<br>
u(1,i+1) ← u(1,i) + h * v(1,i)<br>
v(1,i+1) ← v(1,i) + h * f(u(1,i),v(1,i),t(1,i))<br>
**Fin pour**
##### Sortie
**Tracer** le nuage de points (t(1,i);u(1,i)) <br>
**Tracer** la courbe représentative de la fonction y
