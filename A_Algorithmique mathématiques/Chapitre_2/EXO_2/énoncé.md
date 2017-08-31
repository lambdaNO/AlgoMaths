# Simulation de lancers de 3 dés

On lance trois dés et on note la sommes des numéros obtenus. On effectue $n$ lancers et on calcule les fréquences des sommes comprises entre $\{3,...,18\}$.
Ensuite, on fait un barplot des résultats.


### Algorithme
#### Entrées :
  - $n$ : le nombre de lancers.


#### Sorties :
  - Les fréquences obtenues sous forme d'un barplot.

#### Remarques
Si on note $T_{k}$ l'évènement *La somme obtenue est égale à k* avec $3\leq k\leq 18$, alors s(1,k)/n correspond à la fréquence de l'évènement $T_{k}$
Cette valeur est ensuite placées dans $f(1,k-2)$ afin d'effectuer le tracé du barplot
