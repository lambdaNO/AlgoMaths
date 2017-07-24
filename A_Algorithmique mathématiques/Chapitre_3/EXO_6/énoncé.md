# Somme des termes d'une suite

On considère la suite $(u_{n})$ définie pour tout entier naturel $n$ non nul :

$$u_{n} = n^{3}$$

Soit $S_{n}$, la somme de ses n premiers termes :

$$S_{n} = \sum_{i=1}^{n} i^{3}$$

On note
$$V_{n} = 1 + 2 + 3 + \dots + n = \frac{n(n-1)}{2}$$

1. On souhaite calculer les $n$ premières valeurs des termes de
    - La somme $S_{n}$
    - La somme $V_{n}$
    - La somme $V_{n}^{2}$
2. Conjecturer l'expression de $(S_{n})$ en fonction de $n$

### Algorithme
#### Entrées :
L'expression de la suite $(u_{n})$  et des sommes $(S_{n})$ $V_{n}$
#### Sorties :
  - Les $n$ premières valeurs de la suite $(u_{n}) ainsi que des sommes $(S_{n})$ $V_{n}$

#### Conjecture :

$$S_{n} = V_{n}^{2} = \frac{n^{2}(n+1)^{2}}{4}$$
