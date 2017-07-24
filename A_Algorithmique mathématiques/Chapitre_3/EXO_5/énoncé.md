# Suite définie par une moyenne arithmétique

On considère la suite $(u_{n})$ définie pour tout entier strictement positif $n$ :

$$u_{n} = \frac{6}{n}(1^{2} + 2^{2} + 3^{2} + \dots + n^{2}) = \frac{6}{n}\sum_{k=1}^{n} k^{2}$$

1. On souhaite calculer les $n$ premières valeurs des termes de la suite $u_{n}$
2. Représenter ces termes graphiquement.
3. On souhaite déterminer une formule qui permet de calculer $u_{n}$ en fonction de $n$. Soit $f$, une fonction telle que u_{n} = f(n).
4. On souhaite représenter la fonction $f(x) = 2x^{2} + 3x + 1$ et les $n$ premiers termes de la suite $(u_{n})$ dans une même fenêtre
5. Conjecturer l'expression de $(u_{n})$ en fonction de $n$

### Algorithme
#### Entrées :
L'expression de la suite $(u_{n})$  et la valeur du premier terme $u_{1}=0$
#### Sorties :
  - Les $n$ premières valeurs de la suite $(u_{n}).
  - Les représentations graphiques

#### Compléments sur la méthode utilisée :
On utilisera une Structure répétitive pour calculer les $n$ première valeurs des termes des suites. On affichera les résultats et on représentera le nuage de points ainsi que le graphe de la fonction.

#### Conjecture :
Par interprétation graphique, on peut supposer que :

$$u_{n} = 2n^{2} + 3n + 1$$
