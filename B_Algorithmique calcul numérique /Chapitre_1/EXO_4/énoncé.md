# Couples d'entiers amicaux

On commence par donner deux définitions équivalentes d'entiers amicaux.
###### Définition n°1 :
Deux entiers naturels distincts $n$ et $m$ sont amicaux si la somme des diviseurs de $n$ est égale à la somme des diviseurs de $m$ et si cette somme est égale avec $n+m$
###### Définition n°2 :
Deux entiers naturels distincts $n$ et $m$ sont amicaux si la somme des diviseurs de $n$ strictement inférieur à $n$ est égale à $m$ et si la somme des diviseurs de $m$ strictement inférieurs à $m$ est égale à $n$.
###### Exemple :
- $n=220$ et $m=284$ sont des entiers amicaux. En effet, d'après la définition n°1 :
$$s(n) = 1+2+4+5+10+11+20+22+44+55+110+220 = 504 $$
$$s(m) = 1 + 2 + 4 + 71 + 142 + 284 + 504 $$
et
$$ n + m = 220 + 284 = 504 $$

- $n=220$ et $m=284$ sont des entiers amicaux. En effet, d'après la définition n°2 :
$$s'(n) =  1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284 = m$$
$$s'(m) =  1 + 2 + 4 + 71 + 142 = 220 = n$$

Il s'agit de développer un algorithme puis un programme permettant de vérifier si deux nombres entiers $n$ et $m$  donnés sont amicaux ou non.

Nous allons tester $(1184,1210); (2620,2924); (5020,5564); (10744,10856); (63020,76084)$.

### Présentation de la méthode
- On commence par déterminer les diviseurs des entiers $n$ et $m$. Pour cela, nous allons utiliser la fonction modulo(n,k) ou n%k qui retourne le reste de la division Euclidienne de $n$ par $k$.
Si modulo(n,k) == 0, alors cela signifie que $k$ divise $n$.
- On effectue ensuite les sommes cumulées de tous les diviseurs $s'(n)$ et $s'(m)$
- On vérifie si $s'(n)=m$ et $s'(m)=n$
### Algorithme

#### Entrées
Saisir les valeurs des entiers $n$ et $m$

#### Traitement
s1 ← 0
<!-- -->
**Pour** k **de** 1 **jusqu'à** (n-1) **Faire**
<!-- -->
**Si** modulo(n,k)==0 **Alors**
<!-- -->
s1 ← s1 + k
<!-- -->
**Fin si**
<!-- -->
**Fin pour**

s2 ← 0
<!-- -->
**Pour** p **de** 1 **jusqu'à** (m-1) **Faire**
<!-- -->
**Si** modulo(m,p)==0 **Alors**
<!-- -->
s2 ← s2 + p
<!-- -->
**Fin si**
<!-- -->
**Fin pour**
##### Sortie
**Si** (s1 == m && s2 == n) **Alors**
<!-- -->
**Afficher** : $m$ et $n$ sont des entiers amicaux
<!-- -->
**Sinon**
<!-- -->
**Afficher** : $m$ et $n$ sont des entiers amicaux
<!-- -->
**Fin si**
