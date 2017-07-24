# Evolution d'une population de lapins.
Possedant initialement un couple de lapereaux, combien de couples obtient-on au bout de $n$ mois si chaque couple engendre tous les mois un nouveau couple à compter du troisième mois d'existence ?

Il s'agit d'une application de la suite de Fibonacci (Léonardo). Ce dernier décrit dans l'un de ses ouvrages, la croissance d'une population de lapin.

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233,...

Le problème consiste à calculer le n-ième terme de la suite de Fibonacci correspondant au nombre de couples au n-ième mois.

Dans cette population (idéale), on suppose que :
- le premier mois, il n'y a juste qu'un couple de lapereaux
- les lapereaux ne sont pubères qu'à partir du troisième mois
- chaque mois, tout couple susceptible de procréer engendre effectivement un nouveau couple de lapereaux
- les lapins ne meurent jamais (donc la suite de Fibonacci est strictement croissante)

### Algorithme
#### Entrées :
$n$ : le nombre de mois d'étude
#### Sorties :
$c(n)$ : le nombre de couples de lapins au bout de n mois.

#### Compléments sur la méthode utilisée :
Etude des premiers termes de la suite de Fibonacci.

On note $c(n)$ le nombre de couples les mois numéro n.
- $c(1) = 1$ et $c(2)=1$ car les lapereaux sont prépubères.
- $c(3) = c(1) + c(2) = 1 + 1 = 2$ car le couple a procréé.
- $c(4) = c(3) + c(2) = 2 + 1 = 3$ car on ajoute au nombre $c(3)$, le nombre de couple pubères $c(2)$ qui peuvent procréer.

On considère au mois $n+2$, les lapins qui peuvent procréer sont des lapins pubères donc nés au mois $n$. Chaque couple donnera naissance à $c(n)$ couples. A ceux-là viennent s'ajouter le nombre de couple déjà présents au mois précédent $c(n+1)$. On obtient ainsi pour tous mois $n>0$

$$ c(n+2) = c(n+1) + c(n)$$
Avec $c(1) = 1$, $c(2) = 1$.
