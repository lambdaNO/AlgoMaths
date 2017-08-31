# Ensemble des diviseurs positifs d'un entier naturel

Un diviseur d'un entier naturel $n$ est un entier $d$ tel que la division euclidienne de $n$ par $d$ donne un reste nul.

Par exemple, 7 est diviseur de 42 car $42 = 7 \times 6 + 0$
On dit que 7 divise 42 ou que 42 est divisible par 7 (ou encore que 42 est un multiple de 7)
Les diviseurs peuvent être positifs ou négatifs. Les diviseurs positifs de 42 sont $\{1,2,3,6,7,17,21,442\}$

On fera l'étude sur $24200$, $287527$ et $29312156$.

### Algorithme
#### Entrées :
  - $n$ : l'entier naturel.

#### Sorties :
  - l'ensemble des diviseurs de l'entier naturel $n$

#### Méthode utilisée
1. On saisit la valeur de $n$
2. Pour tout entier naturel $m$ compris entre 2 et $n$ (car 1 est nécessairement un diviseur de tous les nombres), on cherche les diviseur de $n$. Lorsqu'un diviseur $k$ est trouvé, on cherche toutes les valeurs de $p$ telles que $k^{p}$ divise $n$. On stocke dans un vecteur tous les diviseurs trouvés, on divise $b$ par $k^{p}$ et on cherche à nouveau d'autres diviseurs. On procède ainsi jusqu'à ce que divisions succesives de l'entier $n$ donne 1.

#### Remarque :
1. r et d sont des vecteurs. Si $r = [1,2,3]$ et $d = [5,25]$, alors $r() \& d()$ retourne $[1,2,3,5,25]$
2. La fonction estpremier($n$) retourne 1 si le nombre $n$ est premier 0 sinon. Elle permet à l'algorithme de ne pas lancer la recherche des diviseurs de l'entier $n$ lorsque celui ci n'est pas premier.

#### Résultats :

1. 24200 : 1.   2.   4.   8.   5.   10.   20.   40.   25.   50.   100.   200.   11.   22.   44.   88.   55.   110.   220.   440.   275.   550.   1100.   2200.   121.   242.   484.   968.   605.   1210.   2420.   4840.   3025.   6050.   12100.   24200.
2. 287527 :    1.   19.   37.   703.   409.   7771.   15133.   287527.
3. 29312156 : 1.   2.   4.   29.   58.   116.   252691.   505382.   1010764.  7328039.   14656078.   29312156.
