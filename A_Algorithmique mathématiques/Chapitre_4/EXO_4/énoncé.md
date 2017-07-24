# Nombres premiers - Critère de primalité

Un nombre premier est un entier naturel qui admet deux diviseurs distincts entiers et positifs (qui sont 1 et lui même).

Cette définition exclut 1, qui n'a qu'un seul diviseur entier positif?

Un nombre non premier est dit composé. Par exemple 15 = 5 x 3 est composé de deux nombres premiers (5 et 3).

Nous allons chercher à savoir si un nombre entier $n$ est premier.

## Théorème :
#### Enoncé
Soit $n$, un entier supérieur ou égal à 2. Si $n$ n'est pas premier, alors il existe un diviseur premier $p$ de $n$ tel que
$$p \leq \sqrt{n}$$

#### Démonstration

- Si $n$ n'est pas premier, alors il admet un diviseur premier $p$ tel que $1 < p < n$

- Si $p>\sqrt{n}$ et $d>\sqrt{n}$, alors $pd > n$ ce qui est impossible donc $p\leq \sqrt{n}$ ou $d \leq \sqrt{n}$

- Si $p\leq \sqrt{n}$, le théorème est démontré.

- Si $d\leq \sqrt{n}$, on distingue deux cas :
  - Si $d$ est premier et dans ces cas, le théorème est démontré.
  - Si $d$ n'est pas premier et dans ce cas, il admet un diviseur $p'$ qui est inférieur à $d$ et le théorème est démontré avec $p'$

##### Remarques :
On en déduit le corrolaire suivant :
Soit $n$, un entier naturel superieur ou égal à 2. Si $n$ n'est divisible par aucun nombre premier $p$ inférieur $\sqrt{n}$, alors $n$ est premier.

### Algorithme
Nous allons :
- Implémenter une fonction estpremier(n) qui renverra 1 si un nombre est premier, 0 sinon.
#### Entrées :
  - $n$, un entier naturel

#### Sorties :
  - Une valeur booléenne

#### Complément sur la méthode utilisée
Pour tout entier naturel m compris entre 2 et $\sqrt{n}$, on calcul le reste de la division euclidienne de $n$ par $m$. Si aucun des restes est nul, alors le nombre est premier.
##### Remarques :
  - On appliquer ici le critère de primalité pour tous les entiers $n$ inferieurs à $\sqrt{n}$. Si aucun nombre est entier inférieur à $\sqrt{n}$ ne divise $n$, alors aucun des nombres premiers compris entre $2$ et $\sqrt{n}$ ne divise $n$
  - Afin de réduire les temps de calcul, on commence par vérifier que l'entier n n'est pas divisible par 2 et on continue les vérifications avec les entiers impairs $3,5,7,9,11,\dots$. Ceci nous évite d'aboir ç considérer les diviseurs pairs $4,6,8,12,\dots$.
