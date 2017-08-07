# Etude de la chute libre d'un parachutiste

On étudie la chute libre d'un parachutiste qui saute d'un avion à 3000 mètres d'altitude. on note $v(t)$, la vitesse verticale du parachutiste et $u(t)$, la distance verticale parcourue à l'intant $t$.<br>
Le principe fondamental de la dynamique permet d'écrire les équations suivantes :
$$\left\{
  \begin{array}{rcl}
    M\cdot \frac{dv}{dt} & = & M\cdot g - k \cdot v^{2}\\
&&\\
    \frac{du}{dt} & = & v \\
&&\\
      v(0) & = & 0\\
&&\\
u(0) & = & 0

  \end{array}
\right.
\textrm{ avec } t \in [0;60]
\Leftrightarrow
\left\{
  \begin{array}{rcl}
    v'(t) & = & g - \frac{k}{M}v^{2}(t)\\
&&\\
    u'(t) & = & v(t)\\
&&\\
      v(0) & = & 0\\
&&\\
u(0) & = & 0

  \end{array}
\right.
\textrm{ avec } t \in [0;60]
$$
où $M$ est la masse du parachutiste et $g = 9.81 \textrm{ }m.s^{-2}$ l'accélération de la pesanteur.<br>
Le terme $kv^{2}$ représente la force qui s'excerce sur le parachutiste due à la résistance de l'air. Cette force est proportionnelle au carré de la vitesse $v$.<br>
On donne :
$$ \frac{k}{M} = \frac{1}{28} \textrm{ }m^{-1}$$
Nous allons écrire un algorithme permettant de résoudre numériquement l'équation différentielle puis tracer le nuage de points associé à l'approximation de la solution.<br>
On donne les relations suivantes :
$$V_{0} = \sqrt{28g}\textrm{ ; } v(t) =V_{0}\tanh\left(\frac{g}{V_{0}}t\right)$$
et
$$u(t) = V_{0}t + \frac{V_{0}^{2}}{g}\cdot\ln\left(\frac{1 + e^{-\frac{2g}{V_{0}}t}}{2}\right)$$
Nous tracerons les courbes représentatives de la vitesse verticale et de la distance verticale parcourue en fonction du temps.
### Présentation de la méthode
On utilise la méthode d'Euler :

1. On découpe l'intervalle $[a,b]$ en $N$ parties et on pose :
$$h = \frac{b-a}{N}$$
On obtient ainsi $N+1$ points
$$t_{i} = a + i\cdot\frac{b-a}{N} = a + i\cdot h \textrm{   avec } i \in [0;N]$$
2. Si on note $v_{i}$ l'approximation de la valeur $v(t_{i})$ en $t_{i}$, on obtient :
$$v'(t_{i}) \approx \frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}}$$
et
$$v'(t_{i}) = g - \frac{k}{M}v^{2}_{i}$$
L'approximation s'écrit :
$$\frac{v_{i+1}-v_{i}}{t_{i+1}-t_{i}} =  g - \frac{k}{M}v^{2}_{i}$$
d'où :
$$v_{i+1} = v_{i} + (t_{i+1}-t_{i})\left(g -\frac{k}{M}v^{2}_{i}\right)$$
$$v_{i+1} = v_{i} + h\left(g -\frac{k}{M}v^{2}_{i}\right)$$
3. On note $u_{i}$, l'approximation de la valeur $u(t_{i})$ en $t_{i}$, on obtient :
$$u'(t_{i}) \approx \frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}}$$
et
$$u'(t_{i}) = v(t_{i})$$
L'approximation s'écrit :
$$\frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}} = v_{i}$$
d'où :
$$u_{i+1}-u_{i} =  (t_{i+1}-t_{i})v_{i}$$
$$u_{i+1} = u_{i} + (t_{i+1}-t_{i})v_{i}$$
$$u_{i+1} = u_{i} + hv_{i}$$

Nous allons devoir créer les fonction $fu$ et $fv$ telles que :

$$ fu(t) = V_{0}t + \frac{V_{0}^{2}}{g}\cdot\ln\left(\frac{1 + e^{-\frac{2g}{V_{0}}t}}{2}\right)$$
et
$$fv(t) = \tanh\left(\frac{g}{V_{0}}t\right)$$

### Algorithme
#### Préambule
**Définir** la fonction z = fu<br>
**Définir** la fonction w = fv<br>
#### Entrées
Saisir les valeurs de : <br>
- uO
- vO
- g
- ksm
- t_init
- t_final
- N
#### Traitement
**Définir** la fonction fu<br>
**Définir** la fonction fv<br>
h ← (t_final - t_init)/N <br>
t(1,1) ← t_init <br>
u(1,1) ← u0 <br>
v(1,1) ← v0 <br>
**Pour** i **de** 1 **jusqu'à** N **Faire**<br>
t(1,i+1) ← t(1,1)* h * i<br>
u(1,i+1) ← u(1,i) + h * v(1,i)<br>
v(1,i+1) ← v(1,i) + h * (g-ksm*v(1,i)^2)<br>
**Fin pour**
##### Sortie
**Tracer** les nuages de points (t(1,i);u(1,i)) et (t(1,i);v(1,i))<br>
**Tracer** les courbes représentatives des fonctions fu et fv
