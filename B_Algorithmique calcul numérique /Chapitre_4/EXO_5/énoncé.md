# Méthode de décomposition LU - Algorithme de DOOLITTLE

Il s'agit de développer un algorithme, puis un programme, de factorisation $LU$ d'une matrice $A$ donnée. La factorisation consiste à écrire la matrice $A$ comme le produit de deux autres matrices
- $L$ : Une matrice triangulaire inférieure ayant des $1$ sur la diagonnale.
- $U$ : Une matrice triangulaire supérieure.

telle que :
$$A = L\times U$$
$$A = \begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1j} & \dots & a_{1n}  \\
a_{21} & a_{22} & \dots & a_{2j} & \dots & a_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{i1} & a_{i2} & \dots & a_{ij} & \dots & a_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{n1} & a_{n2} & \dots & a_{nj} & \dots & a_{nn}  \\
\end{pmatrix}$$
$$L = \begin{pmatrix}
1 & 0 & \dots & 0 & \dots & 0  \\
l_{21} & 1 & \dots & 0 & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
l_{i1} & l_{i2} & \dots & 1 & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & 0  \\
l_{n1} & l_{n2} & \dots & l_{nj} & \dots & 1  \\
\end{pmatrix}$$
$$A = \begin{pmatrix}
u_{11} & u_{12} & \dots & u_{1j} & \dots & u_{1n}  \\
0 & u_{22} & \dots & u_{2j} & \dots & u_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & u_{ij} & \dots & u_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & 0 & \dots & u_{nn}  \\
\end{pmatrix}$$
Nous travaillerons sur la matrice suivante :
$$A = \begin{pmatrix}
2 & -5 & 1 & 3 \\
4 & 7 & 8 & 2 \\
3 & 1 & 1 & 6 \\
4 & 1 & 7 & 9
\end{pmatrix}$$


### Présentation de la méthode
On considère les matrices suivantes :
- $L = I_{n}$ : La matrice identité de taille n (ou matrice unité).
- $U$ : La matrice nulle.

1. On crée une boucle pour $i$ variant de $1$ jusqu'à $(n-1)$
2. Pour chaque valeur de $i$, on applique les formules de récurrences suivantes :
    - Pour $j$ variant de $i$ jusqu'à $n$ :
    $$u_{ij} = a_{ij}-\sum_{k=1}^{i-1} l_{ik}\cdot u_{kj}\textrm{ avec } j \in \{i,i+1, \dots, n \}$$
    - Pour $j$ variant de $i+1$ jusqu'à $n$ :
    $$l_{ji}=\frac{1}{u_{ii}}\left(a_{ji}-\sum_{k=1}^{i-1}l_{jk}\cdot u_{ki}\right) \textrm{ avec } j \in \{i+1,i+2, \dots, n \}$$
3. On termine par le calcul du terme $u_{nn}$ :
$$u_{nn} = a_{nn} - \sum_{k=1}^{n-1}l_{nk}\cdot u_{kn}$$
#### Fonction à créer:
Nous allons devoir créer la fonction $f$ telle que :
$$f(p,i,j) = \sum_{k=1}^{p-1}l_{ik}\cdot u_{kj}$$
Que nous appellerons *somme(p,i,j)*
### Algorithme

##### Entrées
**Saisir** la matrice $A$
##### Traitement
**Définir** la fonction somme(p,i,j)<br>
**Pour** i **de** 1 **jusqu'à** (N-1) **Faire**<br>
**Pour** j **de** i **jusqu'à** N **Faire**<br>
U(i,j)← A(i,j) - somme(i,i,j)<br>
**Fin pour**<br>
**Pour** j **de** (i+1) **jusqu'à** N **Faire**<br>
L(i,j)← (1/U(i,i))* (A(j,i) - somme(i,j,i)) <br>
**Fin pour**<br>
**Fin pour**<br>
U(N,N)← A(N,N) - somme(N,N,N)
##### Sortie
Afficher les matrices :
- A
- L
- U
- L * U

###### Exemples:
A :
[2, -5, 1, 3
 4, 7, 8, 2
 3, 1, 1, 6
 4, 1, 7, 9]
