# Algorithme d'Euclide : Calcul du PGCD
Le plus grand diviseur commun de deux entiers naturels est le plus grand entier naturel qui divise simultanément ces deux entiers. Par exemple, PGCD(42,56) = 14

### Algorithme
#### Entrées :
$a$ et $b$, deux entiers naturels
#### Sorties :
PGCD($a,b$) : plus grand commun diviseur de $a$ et $b$

#### Compléments sur la méthode utilisée :
L'Algorithme d'Euclide consiste à écrire une succession de divisions Euclidiennes. On effectue la division Euclidienne de $a$ par $b$ et on note $r$, le reste de la division. On remplace alors $a$ par $b$, $b$ par $r$ et on effectue de nouveau une division Euclidienne.
On définit ainsi une suite de restes et on obtient un rest nu au bout d'un certain nombre de divisions Euclidiennes. Le PGCD de $a$ et $b$ est le dernier reste non nul.
