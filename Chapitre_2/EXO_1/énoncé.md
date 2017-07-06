# Le jeu du lièvre et de la tortue

Un lièvre et une tortue sont sur la ligne de départ. La tortue doit avancer de $p$ cases pour atteindre la ligne d'arrivée.

### Règle du jeu :
Une partie comporte au plus $p$ tours. A chaque tour, on lance un dé. **Si** le 6 sort, alors le lièvre gagne la partie; **Sinon** la tortue avance d'une case. La tortue gagne quand elle a avancé $p$ fois.

Soit *T :" la tortue gagne la partie"*. Il s'agit de déterminer, à l'aide d'une simulation de ce jeu, la fréquence de l'évènement *T* afin de pouvoir conjecturer, suivant les valeurs de $p$, si le jeu est à l'avantage du lièvre ou de la tortue.

Nous allons implémenter un algorithme permettant d'effectuer la simulation de $n$ parties et de compter le nombre de parties $t$ gagnées par la tortue. Nous en déduirons la fréquence $t/n$ de l'évènement *T*.


### Algorithme
#### Entrées :
  - $n$ : le nombre de parties à jouer.
  - $p$ : le nombre de cases à parcourir par la tortue.


#### Sorties :
  - $t$ : le nombre de parties gagnées par la tortue
  - $t/n$ : la fréquence de l'évènement *T*

#### Compléments sur la méthode utilisée :
  - La simulation de chaque lancer de dé est obtenue par la génération aléatoire d'un nombre entier compris entre 1 et 6.
  - Pour chaque partie, on lance le dé au maximum $p$ fois. Par exemple, si le 6nsort au second lancer, alors la tortue a perdu et on recommence alors une nouvelle partie
  - Pour chaque partie gagnée par la tortue, on incrémente la valeur $t$
  - Au bout de $n$ parties, on calcul le quotient $t/n$ correspondant à la fréquence de l'évènement *T*

#### Conjecture :
Par interprétation graphique, on peut supposer que :

$$u_{n} = 2n^{2} + 3n + 1$$
