# Nombre à moyenne harmonique entière

Un nombre à moyenne harmonique entière est un entier naturel $p$ dont la moyenne harmonique $m$ de ses $n$ diviseurs positifs est un entier.
Si on note $d_{1}$, $d_{2}$, \dots, $d_{n}$, les $n$ diviseurs de l'entier naturel $p$, alors le nombre $m$ suivant est un entier :

m = \frac{n}{\frac{1}{d_{1}}+\frac{1}{d_{2}}+ \dots + \frac{1}{d_{n}}} = \frac{n}{\sum_{k=1}^{n}\frac{1}{d_{k}}}$$

##### Exemple :
On considère le nombre $p=6$. Les 4 diviseurs de 6 sont $\{1,2,3,6\}$. Il y a 4 diviseurs donc $n = 4$. On a donc :

$$m = \frac{4}{\frac{1}{1}+\frac{1}{2}+\frac{1}{3}+ \frac{1}{6}} = \frac{4}{2} = 2$$

On obtient donc $m = 2$, $m$ est un entier donc **6 est un nombre à moyenne harmonique entière**

Nous allons effectuer l'étude sur les nombres : 6, 1638, 6200, 8190.

### Algorithme
#### Entrées :
  - $p$ : l'entier naturel.

#### Sorties :
  - la moyenne harmonique $m$ de l'entier naturel $p$

#### Méthode utilisée
1. On définit les entiers $q_{n} = 2^{n+1} - 1$ et $p_{n} = 2^{n}\times q_{n}$, où $n$ est un entier naturel. Nous allons donners quelques valeurs de $n$ pour lesquelles l'entier $p_{n}$ est un entier à moyenne harmonique. Quelle conjecture peut on définir ?

#### Remarque :
1. r et d sont des vecteurs. Si $r = [1,2,3]$ et $d = [5,25]$, alors $r() \& d()$ retourne $[1,2,3,5,25]$
2. La fonction estpremier($n$) retourne 1 si le nombre $n$ est premier 0 sinon. Elle permet à l'algorithme de ne pas lancer la recherche des diviseurs de l'entier $n$ lorsque celui ci n'est pas premier.

#### Résultats :

1. Le nombre 6 est un nombre à moyenne harmonique entière : m = 2
2. Le nombre 10 n'est pas un nombre à moyenne harmonique entière : m = 2.22222
3. Le nombre 1638 est un nombre à moyenne harmonique entière : m = 9
4. Le nombre 6200 est un nombre à moyenne harmonique entière : m = 10
5. Le nombre 5670 n'est pas un nombre à moyenne harmonique entière : m = 13.01653
6. Le nombre 8128 est un nombre à moyenne harmonique entière : m = 7
7. Le nombre 8190 est un nombre à moyenne harmonique entière : m = 15
8. Le nombre 10000 n'est pas un nombre à moyenne harmonique entière : m = 10.32588


On effectuer à présents les test suivants :

1. $n=6$, $q_{n} = 7$ et $p = 28$ : Le nombre 28 est un nombre à moyenne harmonique entière : m = 3
2. $n=6$, $q_{n} = 127$ et $p = 8128$ : Le nombre 8128 est un nombre à moyenne harmonique entière : m = 7
3. $n=12$, $q_{n} = 8191$ et $p = 33550336$ : Le nombre 33550336 est un nombre à moyenne harmonique entière : m = 13
4. $n=16$, $q_{n} = 131071$ et $p = 2^{16}(2^{17}-1)$ (En SCILAB 2^16*(2^17-1))
Le nombre -2147483648 est un nombre à moyenne harmonique entière : m = 17

#### Conjecture :
Lorsque $q_{n}$ est premier, alors l'entier $p_{n}$ est un nombre à moyenne harmonique entière et $m=n+1$.
