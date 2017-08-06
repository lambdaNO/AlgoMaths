# Approximation de la fonction exponentielle par la méthode d'Euler

Il s'agit de développer un algorithme, puis un programme de résolution numérique de l'équation différentielle suivante :
$$\left\{
  \begin{array}{rcl}
    u'(t) & = & u(t)
&&\\
    u(0) & = & 1 \\
  \end{array}
\right.
\textrm{ avec } t \in [0;5]
$$
Nous allons écrire un algorithme permettant de résoudre numériquement l'équation différentielle puis tracer le nuage de points associé à l'approximation de la solution. Enfin, sur le même graphique, nous tracerons la courbe représentative de la fonction
$$ s : x \mapsto e^{x}$$
### Présentation de la méthode
On considère l'équation différentielle de forme généralé suivante :
$$\left\{
  \begin{array}{rcl}
    u'(t) & = & f(t,u(t))
&&\\
    u(a) & = & u_{0} \\
  \end{array}
\right.
\textrm{ avec } t \in [a;b]
$$
1. On découpe l'intervalle $[a,b]$ en $N$ parties et on pose :
$$h = \frac{b-a}{2}$$
On obtient ainsi $N+1$ points
$$t_{i} = a + i\cdot\frac{b-a}{N} = a + i\cdot h \textrm{ avec } i \in [0;N]$$
2. Le nombre dérivé $u'(t_{i})$ en $t_{i}$ est approché par le quotient suivant :
$$u'(t_{i}) \approx \frac{u(t_{i+1})-u(t_{i})}{t_{i+1}-t_{i}}$$
Si on note $y_{i}$, l'approximation de la valeur $u(t_{i})$ en $t_{i}$, on obtient :
$$u'(t_{i}) \approx \frac{y_{i+1}-y_{i}}{t_{i+1}-t_{i}}$$
et
$$u'(t_{i}) =  f(t_{i},u(t_{i}))$$
Finalement, l'approximation s'écrit :
$$\frac{y_{i+1}-y_{i}}{t_{i+1}-t_{i}} = f(t_{i},y_{i})$$
3. On en déduit la relation de récurrence suivante :
$$ y_{i+1} - y_{i} = (t_{i+1}-t_{i})\times f(t_{i},y_{i}) $$
$$ y_{i+1} = y_{i}+ (t_{i+1}-t_{i})\times f(t_{i},y_{i}) $$
C'est à dire :
$$\left\{
  \begin{array}{rcl}
     y_{i+1} & = & y_{i}+ h\times f(t_{i},y_{i})
&&\\
    y_{0} & = & u_{0} \\
  \end{array}
\right.
\textrm{ avec } i \in [0;N]
$$
### Algorithme
#### Préambule
**Définir** la fonction z = f(t,y)
#### Entrées
Saisir les valeurs de : <br>
- a
- b
- u0
- N
#### Traitement
**Définir** la fonction f<br>
h ← (b-a)/N <br>
t(1,1) ← a <br>
y(1,1) ← u0 <br>
**Pour** i **de** 1 **jusqu'à** N **Faire**<br>
t(1,i+1) ← t(1,1)* h * i<br>
y(1,i+1) ← y(1,i) + h * f(t(1,i),y(1,i))<br>
**Fin pour**
##### Sortie
**Tracer** le nuage de points (t(1,i);y(1,i))<br>
**Tracer** la courbe représentative de la fonction exponentielle.
