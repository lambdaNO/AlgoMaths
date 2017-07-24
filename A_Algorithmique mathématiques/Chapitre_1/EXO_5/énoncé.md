# Détermination d'une équation de droite 

A partir des coordonnées de deux points $A(x_{A},y_{A})$ et $B(x_{B},y_{B})$ distincts du plan, on souhaite déterminer l'équation de la droite passant par ces deux points :

$$ y = ax+b $$
Il s'agit donc de déterminer les coefficients $a$ et $b$.


### Algorithme

Nous devons écrire un programme permettant de saisir les coordonnées des points $A$ et $B$ et déterminer l'équation de droite. Nous finirons par la représentation graphique de cette droite.
#### Entrées :
  - les points $A$ et $B$

#### Sorties :
  - les coefficients $a$ et $b$
  - Une représentation graphique

#### Compléments sur la méthode utilisée :

On calcule les coefficients de la manière suivante :

$$a= \frac{y_{B}-y_{A}}{x_{B}-x_{A}}$$
pour $x_{b}-x_{a} \neq 0$ et
$$ b = y_{A} - ax_{A}$$
