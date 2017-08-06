# Etude d'un circuit RC

On considère un circuit RC et on étudie les variations de la tension $u(t)$ aux bornes du condensateur.<br>
Cette tension est solution de l'équation différentielle suivante :
$$\left\{
  \begin{array}{rcl}
    \frac{du}{dt} + \frac{1}{\tau}u & = & \frac{E}{\tau}
&&\\
    u(0) & = & 0 \\
  \end{array}
\right.
\textrm{ avec } t \in [0;10]
$$

où $E$ est la tension continue délivrée par le générateur $\tau = RC$ la constante de temps du circuit<br>
Cette équation s'écrit également :
$$\left\{
  \begin{array}{rcl}
    u'(t) & = & - \frac{1}{\tau}u(t) + \frac{E}{\tau}
&&\\
    u(0) & = & 0 \\
  \end{array}
\right.
\textrm{ avec } t \in [0;10]
$$
Il s'agit de développer un algorithme, puis un programme de résolution numérique de cette équation différientielle. l'équation différentielle suivante :<br>
On donne $E = 6 V$;$\tau = 1s$.

Nous allons écrire un algorithme permettant de résoudre numériquement l'équation différentielle puis tracer le nuage de points associé à l'approximation de la solution. Enfin, sur le même graphique, nous tracerons la courbe représentative de la fonction
$$ u(t) = E\left(1-e^{-\frac{t}{\tau}}\right)$$

### Présentation de la méthode
On utilise la méthode d'Euler :

1. On découpe l'intervalle $[a,b]$ en $N$ parties et on pose :
$$h = \frac{b-a}{N}$$
On obtient ainsi $N+1$ points
$$t_{i} = a + i\cdot\frac{b-a}{N} = a + i\cdot h \textrm{   avec } i \in [0;N]$$
2. Le nombre dérivé $u'(t_{i})$ en $t_{i}$ est approché par le quotient suivant :
$$u'(t_{i}) \approx \frac{u(t_{i+1})-u(t_{i})}{t_{i+1}-t_{i}}$$
Si on note $u_{i}$, l'approximation de la valeur $u(t_{i})$ en $t_{i}$, on obtient :
$$u'(t_{i}) \approx \frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}}$$
et
$$u'(t_{i}) =  - \frac{1}{\tau}u_{i} + \frac{E}{\tau}$$
Finalement, l'approximation s'écrit :
$$\frac{u_{i+1}-u_{i}}{t_{i+1}-t_{i}}  - \frac{1}{\tau}u_{i} + \frac{E}{\tau} $$

3. On en déduit la relation de récurrence suivante :
$$ u_{i+1} - u_{i} = (t_{i+1}-t_{i})\times \left(-\frac{1}{\tau}u_{i} + \frac{E}{\tau}\right) $$
$$ u_{i+1} - u_{i} = h\times \left(-\frac{1}{\tau}u_{i} + \frac{E}{\tau}\right)$$
$$ u_{i+1}  = u_{i} + h\times \left(-\frac{1}{\tau}u_{i} + \frac{E}{\tau}\right)$$

C'est à dire :
$$\left\{
  \begin{array}{rcl}
     u_{i+1} & = & u_{i} + h\times \left(-\frac{1}{\tau}u_{i} + \frac{E}{\tau}\right)
&&\\
    u_{0} & = & u(0) = 0 \\
  \end{array}
\right.
\textrm{ avec } i \in [0;N]
$$
#### Fonction à créer:
Nous allons devoir définir la fonction suivante :
$$ f(u_{i})= \left(-\frac{1}{\tau}u_{i} + \frac{E}{\tau}\right)$$

### Algorithme
#### Préambule
**Définir** la fonction z = f(u)
#### Entrées
Saisir les valeurs de : <br>
- a
- b
- u0
- N
- E
- T
#### Traitement
**Définir** la fonction f<br>
h ← (b-a)/N <br>
t(1,1) ← a <br>
u(1,1) ← u0 <br>
**Pour** i **de** 1 **jusqu'à** N **Faire**<br>
t(1,i+1) ← t(1,1)* h * i<br>
u(1,i+1) ← u(1,i) + h * f(u(1,i))<br>
**Fin pour**
##### Sortie
**Tracer** le nuage de points (t(1,i);u(1,i))<br>
**Tracer** la courbe représentative de la fonction solution
