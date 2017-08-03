# Tri par sélection et tri à bulles

Il s'agit de développer un algorithme, puis un programme, permettant de trier une liste de valeurs numériques donnée afin de ranger les éléments dans l'ordre croissant.<br>
On considère deux méthodes :
1. Le tri par sélection (tri par extraction)
2. Le tri à bulles (tri par propagation)

Nous travaillerons sur la liste suivante :
[9,9,9,10.5,12,15,242,1,0,5,1,2,78]


### Présentation de la méthode
#### Tri par sélection
On considère une liste de $n$ éléments $a(1),a(2),a(3),\dots,a(n)$ donnée. le principe du tri par selection est le suivant :
- On cherche le plus petit élément de la liste de $n$ éléments $a(1),a(2),a(3),\dots,a(n)$ puis on l'échange avec l'élément d'indice $1$, $a(1)$.
- On cherche le second plus petit élément de la liste de $n-1$ éléments $a(2),a(3),a(4),\dots,a(n)$ puis on l'échange avec l'élément d'indice $2$, $a(2)$
- On cherche le troisième plus petit élément de la liste de $n-2$ éléments $a(3),a(4),\dots,a(n)$ puis on l'échange avec l'élément d'indice $3$, $a(3)$
- On effectue la même opération tant que la liste n'est pas entièrement triée.
#### Tri à bulles
Le tri à bulles est un algorithme de tri qui consiste à faire remonter progressivement les plus grands éléments d'un tableau, un peu comme des bulles d'air qui remonteraient progressivement à la surface d'un liquide.<br>
On considère une liste de $n$ éléments $a(1),a(2),a(3),\dots,a(n)$ donnée. le principe du tri à bulles est le suivant :
- On parcourt la liste en comparant les couples d'éléments sucessufs $a(i)$ et $a(i+1)$. Lorsque deux éléments successifs ne sont pas dans l'ordre croissant, ils sont échangés.
- Après chaque parcours complet de la liste, on recommence l'opération.
- On continue jusqu'à ce qu'aucun échange n'ait eu lieu pendant un parcours.

#### Fonction à créer:
Nous allons utiliser les variables booléennes en Scilab : %f et %t.
### Algorithme
#### Tri par selection
##### Entrées
**Saisir** la liste M()
##### Traitement
N ← nombre d'éléments de N;<br>
**Pour** i **de** 1 **jusqu'à** (N-1) **Faire**<br>
**Pour** j **de** (i+1) **jusqu'à** N **Faire**<br>
**Si** M(j) < M(i) **Alors**<br>
val_tmp ← M(i)
M(i) ← M(j)
M(j) ← val_tmp
**Fin si**<br>
**Fin pour**<br>
**Fin pour**
##### Sortie
Afficher M()

#### Tri à bulles
##### Entrées
**Saisir** la liste M()
##### Traitement
N ← nombre d'éléments de N;<br>
echange ← VRAI <br>
**Tant que** echange == Vrai **Faire**<br>
echange ← FAUX<br>
**Pour** i **de** 1 **jusqu'à** (N-1) **Faire**<br>
**Si** M(i) > M(i+1) **Alors**<br>
val_tmp ← M(i)<br>
M(i) ← M(i+1)<br>
M(i+1) ← val_tmp <br>
echange ← VRAI <br>
**Fin si**<br>
**Fin pour**<br>
**Fin tant que**
##### Sortie
Afficher M()
