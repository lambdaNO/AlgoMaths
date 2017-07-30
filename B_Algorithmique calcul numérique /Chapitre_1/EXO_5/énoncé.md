# Conjecture d'Erdös-Straus
La conjecture d'Erdös-Straus s'énonce ainsi :

Pour entier naturel $n\geq 2$, il existe trois entiers naturels $x$, $y$, $z$ tels que :
$$\frac{4}{n} = \frac{1}{x} + \frac{1}{y} + \frac{1}{z}$$

Il s'agit alors de développer un algorithme puis un programme permettant de vérifier cette conjecture pour $n \in \{2,3,4,\dots,25\}$
### Présentation de la méthode
Pour chaque valeurs de $n$, on détermine trois entiers naturels $x$,$y$ et $z$ en supposant que ces entiers sont compris entre $[1,n^{2}]$
##### Remarque :
Nous allons utiliser les variables booléennes :
- test = %t : donne la valeur **vrai** à la variable test.
- test = %f : donne la valeur **faux** à la variable test.

En PYTHON, on utilise simplement TRUE et FALSE
### Algorithme

#### Entrées
Nmaxi  ← 25

#### Traitement
n  ← 2
<!-- -->
**Tant que** (n<= Nmax) **Faire**
<!-- -->
a ← 4/n
<!-- -->
test ← %f
<!-- -->
x ← 1
<!-- -->
**Tant que** (test == %f & x <= n^2) **Faire**
<!-- -->
b ← a - 1/x
<!-- -->
y ← 1
<!-- -->
**Tant que** (test == %f & y <= n^2) **Faire**
<!-- -->
c ← b - 1/y
<!-- -->
z ← 1
<!-- -->
**Tant que** (test == %f & z <= n^2) **Faire**
<!-- -->
**Si** (c== 1/z) **Alors**
<!-- -->
t ← %t
<!-- -->
**Sinon**
<!-- -->
z  ← z + 1
<!-- -->
**Fin si**
<!-- -->
**Fin tant que**
<!-- -->
**Si** (test == %f) **Alors**
<!-- -->
y ← y + 1
<!-- -->
**Fin si**
<!-- -->
**Fin tant que**
<!-- -->
**Si** (test == %f) **Alors**
<!-- -->
x ← x + 1
<!-- -->
**Fin si**
<!-- -->
**Fin tant que**
<!-- -->
**Si** (test == %t) **Alors**
<!-- -->
**Afficher** : n,x,y,z
<!-- -->
n ← + 1
<!-- -->
**Fin si**
<!-- -->
**Fin tant que**
<!-- -->
#### Sortie
**Afficher** : n,x,y,z
