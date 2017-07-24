# Représentation graphique d'une fonction
Soit $f$, une fonction donnée. On souhaite tracer la représentation graphique de la fonction en SCILAB.

On considère la fonction :
$$ f(x) = -x^{2} + 10x - 23 $$
On souhaite tracer la représentation graphique de la fonction sur un intervalle $[a,b]$ où a et b sont des réels données.

### Algorithme

Nous devons écrire un programme permettant de saisir l'expression de la fonction, les bornes de l'intervalle ainsi que le nombre de points de la courbe à déterminer : $(x_{i},y_{i})$;

#### Entrées :
  - $f$ : la fonction à étudier
  - $[a,b]$ : les bornes de l'intervalle
  - $p$ : le nombre de couples de points $(x_{i},y_{i})$ à calculer
#### Sorties :
  - La représentation graphique de $f$

#### Compléments sur la méthode utilisée :
1. On saisit l'expression de la fonction.
2. On saisit les bornes $a$ et $b$ de l'intevalle d'étude
3. On saisit le nombre de points à calculer
4. On définit un vecteur x comportant $p$ points équidistants dans $[a,b]$
