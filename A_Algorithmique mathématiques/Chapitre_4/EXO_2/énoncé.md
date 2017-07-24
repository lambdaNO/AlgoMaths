# Restes de la division Euclidienne par $p$

Il s'agit d'étudier les restes de la division Euclidienne par $p$ des termes de la suite $(u_{n})$ pour tout entier naturel non nul par :

$$u_{n} = a \times n + b$$

Les entiers $a$ et $b$ sont données et $p$, un entier strictement supérieur à $1$.

On définit une suite de restes euclidens et on souhaite conjecturer le comportement de cette suite.

### Algorithme
Nous allons :
- Implémenter un algorithme permettant de calculer les restes de la division euclidienne par $p$ pour les $n$ premières valeurs des termes de la suite $(u_{n})$.
- Effectuer les applications numériques suivantes :
  - a = 12, b = 5 et p = 20;
  - a = 5, b = -3 et p = 20;
  - a = 12, b = -3 et p = 7;
- Etudier les suites formées par ces restes euclidens.
#### Entrées :
  - $a,b$ : les entiers permettant de définir la suite
  - $p$ : Un entier naturel strictement supérieur à 1.

#### Sorties :
  - $r$ : un vecteur ligne contenant les $n$ restes à étudier

#### Conjecture :
On remarque une periodicité des restes de la division euclidienne des termes de la suite par $p$ (en somme c'est logique puisqu'on utilise un modulo)
