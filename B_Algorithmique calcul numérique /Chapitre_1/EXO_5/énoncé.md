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
<br>
**Tant que** (n<= Nmax) **Faire**
<br>
a ← 4/n
<br>
test ← %f
<br>
x ← 1
<br>
**Tant que** (test == %f & x <= n^2) **Faire**
<br>
b ← a - 1/x
<br>
y ← 1
<br>
**Tant que** (test == %f & y <= n^2) **Faire**
<br>
c ← b - 1/y
<br>
z ← 1
<br>
**Tant que** (test == %f & z <= n^2) **Faire**
<br>
**Si** (c== 1/z) **Alors**
<br>
t ← %t
<br>
**Sinon**
<br>
z  ← z + 1
<br>
**Fin si**
<br>
**Fin tant que**
<br>
**Si** (test == %f) **Alors**
<br>
y ← y + 1
<br>
**Fin si**
<br>
**Fin tant que**
<br>
**Si** (test == %f) **Alors**
<br>
x ← x + 1
<br>
**Fin si**
<br>
**Fin tant que**
<br>
**Si** (test == %t) **Alors**
<br>
**Afficher** : n,x,y,z
<br>
n ← + 1
<br>
**Fin si**
<br>
**Fin tant que**
<br>
#### Sortie
**Afficher** : n,x,y,z
