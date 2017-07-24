# Le jeu des triangles

On considère les pâtes d'un paquet de spaghettis

### Règle du jeu :
On prend une pâte que l'in passe dans une machine qui la coupe, au hasard, en 3 morceaux de longueur quelconques. On regarde ensuite si les trois morceaux obtenus permettent de construire un triangle quelconque. On recommence l'opération pour $n$ pâtes et on obtient ainsi $t$ triangles quelconques.

Soit $T$, l'évènement *On obtient un triangle quelconque*. On souhaite mettre en place la simulation de ce jeu et déterminer la frauence de l'évènement $T$ pour $n$ essais effectués.

Dans tout le problème, on considère que les spaghettis ont une longueur unité (par exemple, une unité correspond à  une longueur de 20 cm)


### Algorithme
#### Entrées :
  - $n$ : le nombre de pâtes à passer dans la machine.
#### Sorties :
  - $t$ : le nombre de triangles quelconques obtenus.
  - $t/n$ : la fréquence de l'évènement *T*

#### Compléments sur la méthode utilisée :
  - A partir d'une pâte de longueur unité, on génère trois morceaux de manière aléatoire, de longuer $x$, $y$ et $z$. On Remarque que $x+y+z =1$.
  - On détermine une condition nécéssaire et surffisante pour pouvoir former un triangle à partir de 3 segments $x$, $y$ et $z$.
  - **Rappels du collège** : On peut former un triangle à partir de trois segments de longuer $x$, $y$ et $z$  si et seulement si la longueur du plus grand segments est strictement inférieure à la somme des longueurs des deux autres segments.
  - Si la condition est vérifiéen alors on incrémente la valeur $t$
  - Au bout de $n$ essais, on calcul le quotient $t/n$ correspondant à la fréquence de l'évènement *T*.
#### Indications complémentaires
- Génération des trois morceaux de pâte de longueurs quelconques :
      1. Le premier : x = 1 * rand();
      2. Le second : y = (1-x) * rand();s
      3. Le troisième : z = 1 - x - Y
- Condition nécessaire et surffisante pour pouvoir former un triangle quelconque.

Notons $z$n le plus grand des côtés du triangle quelconque.
On peut écrire :
$$ z < x + y $$
$$ x + y + z = 1 \Leftrightarrow x + y = 1 - z$$
d'où :
$$ z < 1 - z $$
Soit
$$ z < \frac{1}{2}$$
De plus, $x<z$ et $y < z$

Par un raisonnement analogue, on peut en déduire
$$ x < \frac{1}{2}\textrm{ et } $$ y < \frac{1}{2}$$$$

On peut en déduire que pour construire un triangle quelconque à partir de trois morceaux de pâtes, il faut que les longueurs $x$, $y$ et $z$ vérifient le système suivant :

\begin{eqnarray}[\{]
   x & < & \frac{1}{2} \\
   y & < & \frac{1}{2} \\
   z & < & \frac{1}{2}
\end{eqnarray}
