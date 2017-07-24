# Etude d'une courbe
Soit $\mathbb{E}$, un ensemble de points donné, on souhaite représenter cet ensemble de points à l'aide de SCILAB.

On considère dans un repère orthonormé, l'ensemble $\mathbb{E}$ des points $M(x,y)$ défini par :

$$ E = \{ M(x,y)|x\geq 0, y \geq 0, \sqrt{x}+sqrt{y} = 1\}$$

On souhaite représenter cet ensemble de points pour toutes les valeurs de $x$ de l'intervalle $[a,b]$ où $a$ et $b$ sont des réels à déterminer.

### Algorithme
Nous allons implémenter un algorithme permettant de représenter $\mathbb{E}$. Nous saisirons l'expression $f$ telle que $y=f(x)$ ainsi que les bornes $[a,b]$ et le nombre de points à déterminer. Nous constaterons par la suite que cette représentation graphique ressemble à un quart de cercle. On admettra de plus que la reporésentation graphique de $\mathbb{E}$ est une courbe tangente aux axes du repère et on se propose de répondre à la question :

\mathbb{E} est il un quart de cercle ?*

Nous déterminerons un équation du quart de cercle $C$ tangent aux coordonnées aux mêmes points que $\mathbb{E}$. Enfin, nous tracerons les représentations graphiques de $\mathbb{E}$ et de $C$ dans une même fenêtre graphique.

#### Entrées :
  - $f$ : la fonction à étudier telle que $y = f(x)$
  - $[a,b]$ : les bornes de l'intervalle
  - $p$ : le nombre de couples de points $(x_{i},y_{i})$ à calculer
#### Sorties :
  - La représentation graphique de $\mathbb{E}$
  - L'équation de quart de cercle $C$. Il s'agit de déterminer la fonction $g$ telle que pour tout points $N(x,y)$ appartenant au quart de cercle $C$, $y=g(x)$


#### Compléments sur la méthode utilisée :
$$ E = \{ M(x,y)|x\geq 0, y \geq 0, \sqrt{x}+sqrt{y} = 1\}$$


  - **Expression de $f$**  $x$ et $y$ appartiennent à l'intervalle $[0,1]$, $y=f(x)$ avec
  $$f(x) = (1-\sqrt{x})^{2}$$
  - **Expression de $g$** Une équation de cercle $C$ centré en $(1,1)$ et de rayon $1$ s'écrit :
  $$ (x-1)^{2} + (y-1)^{2} = 1$$
  Si on pose $y = g(x)$, alors on peut écrire :
  $$g(x) = 1 - \sqrt{1 - (x-1)^{2}} \forall x \in [0,1]$$

#### Conjecture :

$\mathbb{E}$ n'est pas un quart de cercle. 
