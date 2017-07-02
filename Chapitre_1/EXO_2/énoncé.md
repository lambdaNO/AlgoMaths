# Résolution d'une équation f(x) = 0 par la méthode de dichotomie.
Soit $f$, une fonction strictement monotone sur un intervalle $[a,b]$ où a et b sont des valeurs telles que f changes de signes entre $a$ et $b$.
Il s'agit de résoudre l'équation $(E)$ sur cet intervalle :

$$f(x) = 0 \textrm{ } (E)$$

Nous allons utiliser la méthode par dichotomie. Cette méthode consiste, en choisissant à chaque fois la valeur située au milieu de l'intervalle en cours d'évaluation, à réduire de moitié ce dernier tant que l'on aura pas trouvé $\alpha$ tel que $f(\alpha) = 0$

### Algorithme
On considère l'équation
$$f(x) = -x^{2} + 10x - 23$$
Il s'agit de résoudre $f(x_{1}) = 0$ avec $x_{1} \in [2,4]$ avec une précision $p$ donnée. De même pour $x_{2} \in [5,7]$ avec la même précision.

#### Entrées :
  - f : la fonction à étudier
  - p : la précision désirée
#### Sorties :
  - Les solutions de l'équation $(E)$.

#### Compléments sur la méthode utilisée :
1. On saisit l'expression de la fonction.
- In saisit les bornes $a$ et $b$ de l'intevalle d'étude
- On verifie si la fonction change de signe sur $[a,b]$ (nécessairement, le produit $f(a)f(b)$ doit être négatif)
- On calcul le pivot $m$ tel que
$$ m = \frac{a+b}{2}$$
- On coupe l'intervalle en deux tel que :
  - Si : $f(a)f(m) < 0$, alors on considère l'intervalle $[a,m]$
  - Sinon : on considère l'intervalle $[m,b]$

**Remarque** à la fn du processus, les bornes de l'intervalle d'amplitude inférieure à $p$ se trouvent dans les  variables $a$ et $b$
