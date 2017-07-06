# Etude du reste d'une division Euclidienne

Pour tout entier naturel non nul $n$, on considère les deux nombres entier $a$ et $b$ tels que :
$$ a = 3n^{2} - n + 1$$
$$ b = 2n-1$$
Le but de ce travail est de déterminer, suivant les valeurs de $n$, le reste de la division Euclidienne de $a$ par $b$.

### Algorithme
Nous allons :
- Implémenter un algorithme permettant de calculer les restes $r(n)$ de la division Euclidienne de $a$ par $b$ pour n variant de 1 à m
- Représenter les nuages de points $M_{n}(n;r(n))$
- Conjecturer suivant les valeurs de $n$, l'expression du reste $r(n)$ de la division euclidienne de $a$ par $b$
#### Entrées :
  - $a,b$ : les expressions des deux entier en fonction de $n$

#### Sorties :
  - $r$ : un vecteur ligne contenant les $m$ restes à étudier
  - $M_{n}(n;r(n))$, le nuage de points

#### Conjecture :
A partir des résultats, on peut supposer
- Cas où n est pair :
$$ r(n) = \frac{1}{2}n + 1 $$
- Cas où n est impair :
$$ r(n) = \frac{3n + 1}{2}$$
