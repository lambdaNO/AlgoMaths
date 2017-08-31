# Section plane de surface

A partir d'une équation de surface de type $(S)$ : $z=f(x,y)$, on souhaite
- représenter cette surface dans une première fenêtre graphique.
- représenter la section de cette surface par le plan $(P)$ d'équation $y=d$ dans une deuxième fenêtre graphique


Nous allons étudier les équations suivante :

- $$(S_{1}) : z = \frac{y(2x^{2}+y)}{x^{2}+2y^{2}}\\
$y*(2x^2 + y)/(x^2 + 2y^2)$ sur $[-7,7]$ avec $p = 40$, $d = 5$ et $d = -5$.

- $$(S_{2}) : z = x^{2}+y$$
$x^2+y$ sur $[-10,10]$ avec $p = 40$, $d=7$ et $d = 1$.

- $$(S_{3}) : z = y^{2}(x-y)
$(y^2) * (x-y)$ sur $[-10,10]$ avec $p = 20$ avec $d = 4$.

- $$(S_{4}) : z = xy^{2}
$x*y^2$ sur $[-10,10]$ avec $p = 25$ et $d = 3$.

### Algorithme
#### Entrées :
  - L'équation $(S)$ : $z = f(x,y)$
  - L'équation du plan $(P)$ : $y=d$

#### Sorties :
  - La représentation de la surface dans une fenêtre graphique
  - La représentation de la section de la surface par le plan $(P)$
