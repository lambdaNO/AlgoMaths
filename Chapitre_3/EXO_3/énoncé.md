# Suites définies conjointement

Soit $a$, un nombre réel non nul. On considère deux suites définies par :
$$u_{0} = a \textrm{ et } u_{n+1} = \frac{1}{5}(u_{n}+4)$$
$$v_{0} = -\frac{3}{4}a \textrm{ et } v_{n+1} = \frac{1}{5}(3u_{n}+2v_{n})$$

On souhaite calculer les $n$ premières valeurs des suites $(u_{n})$ et $(v_{n})$ afin, par la suite, de les représenter sous forme d'un nuage de point et de conjecturer sur leurs natures.

### Algorithme
#### Entrées :
$a$, le réel permettant de calculer $u_{0}$ et $v_{0}$
#### Sorties :
  - Les $n$ premières valeurs des deux suites.
  - Les représentations graphique de $(u_{n})$ et $(v_{n})$

#### Compléments sur la méthode utilisée :
On utilisera une Structure répétitive pour calculer les $n$ première valeurs des termes des suites. On affichera les résultats et on représente les deux nuages de points.
