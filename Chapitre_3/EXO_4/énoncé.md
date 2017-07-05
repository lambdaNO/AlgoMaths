# Suite définie par une relation de récurrence

On considère la suite $(u_{n})$ définie par :

$u_{1} = 0$ et pour tout entier naturel $n$ non nul :

$$u_{n+1} = \frac{1}{2-u_{n}}$$


1. On souhaite calculer les $n$ premières valeurs des termes de la suite $u_{n}$
2. Représenter ces termes graphiquement.
3. On souhaite déterminer une formule qui permet de calculer $u_{n}$ en fonction de $n$.
4. On souhaite calculer les valeurs de $\frac{1}{u_{n}-1}$ pour les $n$ premières valeurs de la suite $(u_{n})$

### Algorithme
#### Entrées :
L'expression de la suite $(u_{n})$  et la valeur du premier terme $u_{1}=0$
#### Sorties :
  - Les $n$ premières valeurs de la suite $(u_{n}).
  - Les représentations graphiques

#### Compléments sur la méthode utilisée :
On utilisera une Structure répétitive pour calculer les $n$ première valeurs des termes des suites. On affichera les résultats et on représentera le nuage de points.

#### Conjecture :

On remarque que $$\frac{1}{u_{n}-1} = 1 \Leftrightarrow u_{n} = - \frac{1}{n}+1$$
