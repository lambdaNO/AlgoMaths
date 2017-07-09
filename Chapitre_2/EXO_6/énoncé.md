# La désintégratlon radioactive

En physique. la désintégration des atomes d'un corps radioactif est telle que, à chaque instant, la vitesse de désintégration est proportionnelle à la quantité restante de substance radioactive.
Soit $N(t)$, le nombre d'atomes à l'instant $t$, $\Delta t$ une durée proche de 0 et $\Delta N (t)$, la diminution du nombre d'atomes durant $\Delta t$.

La loi de désintégration s'écrit :

$$\frac{\Delta N(t)}{\Delta t} = - \lambda \Delta N(t)$$

$\lambda$ étant la constante radioactive de ce corps, $\lambda$ est un réel positif. La présence du signe "-" indique que $N(t)$ décroit lorsque $t$ augmente.

A priori, $\lambda$ pourrait dépendre du temps? Ce serait le cas si un processus de vieillissement était en cause, comme par exemple, si l'on s'intéressait au nombre de décès dans une population donnée.
Le fait que $\lambda$ ne dépende pas du temps d'interprète comme un processus de *"mort sans vieillissement"*.
Les physiciens modélisent la situation en considérant que le nombre d'atomes $N(t)$ est une fonction dérivable par rapport à la variable $t$. Donc pour des intervalles de temps très petits :

$$\lim\limits_{\Delta t \rightarrow 0} \frac{N(t+\Delta t)-N(t)}{\Delta t} = \lim\limits_{\Delta t \rightarrow 0} \frac{\Delta N(t)}{\Delta t} = N'(t)$$

Où $N'$ est la fonction dérivée de $N$.

Ainsi, $\frac{\Delta N(t)}{\Delta t} = - \lambda \Delta N(t)$ devient $N'(t)= - \lambda \Delta N(t)$

A l'instant $t=0$, $N_{0} = N(0)$. Cette égalité constitue une condition initiale. Le fonction $N$ est donc solution de l'équation différentielle avec pour condition initiale :

$$\[
\left \{
\begin{array}{c @{=} c}
    y' & -\lambda y \\

    y(0) & N_{0}
\end{array}
\right.
\]
$$

L'objectif de ce travail pratique est de déterminer l’allure de la courbe representative de la fonction $N$.

On souhaite modéliser la désintégration radioactive à l'aide de lancers de dés équilibrés. Pour cela, on considère $N_{0}$ dés et on effectue $T$ expériences aléatoires.
A chaque expériences, chaque dé est lancé une fois et on applique la règle suivant :
  - Si le dé affiche 6, on considère que l'atome se désintègre. On retire alors ce dé qui ne participera pas à l'expérience suivante.
  - Si l'atome ne se désintègre pas, on conserve alors ce dé pour la prochaine expérience.

Chaque expériences est effectuée à chaque intervalle de temps $\Delta t = 1$ (par exemple, 1 unité coresspond à 0.5 secondes).

Nous allons écrire un programme prenant en paramètres saisis, les données $T$ et $N_{0}$ puis nous tracerons l'ensemble du nuance de points $M_{k}(k.\Delta t,N(k.\Delta t))$ et la courbe représentative de la fonction :
$$f(t) = N_{0} e^{-\frac{1}{6}t}$$
Où $\frac{1}{6}$ correspond à la probabilité d'obtenir un 6 par unité de temps.

### Algorithme
#### Entrées :
  - $T$ : Le nombre d'expériences
  - $N_{0}$ : le nombre initial d'atomes (dés)

#### Sorties :
  - $N(k)$, le nombre d'atomes restants à la fin de l'expérience n°$k$
  - Le nuage de points $M_{k}(k.\Delta t,N(k.\Delta t))$ et la courbe représentative de $f$
##### Remarque :
On considère un intervalle de temps unité $\Delta t = 1$

#### Remarques sur l'implémentation :
- La variable $n$ est un vecteur ligne comportant $(T+1)$ colonnes.
- $n(1,1)$ a pour valeur $N_{0}$, le nombre initial d'atomes (de dès).
- $n(1,k)$ a pour valeur le nombre de dès restants à la fin de la $k-1$ème expérience.
- $n(1,T+1)$ a pour valeur le nombre de dés restant à la fin des T expériences.


#### Conjecture :
Le nombre d'atomes non désintégrés à l'instant *t unité de temps* a pour expression
$$N(t) = N_{0} e^{-\frac{1}{6}t}$$
