# Résolution d'un système AX = B par décomposition LU
Il s'agit de développer un algorithme, puis un programme, de résolution d'un système $A.X=B$ où $A$ et $B$ sont des matrices données.<br>
On commence par déterminer un système équivalent :
$$L.U.X = B$$
On résout alors successivement les deux systèmes suivants :
$$\left\{
  \begin{array}{rcl}
    L.Y & = & B\\
    U.X & = & Y \\
  \end{array}
\right.
$$
On utilise les notations suivantes :
$$A = \begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1j} & \dots & a_{1n}  \\
a_{21} & a_{22} & \dots & a_{2j} & \dots & a_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{i1} & a_{i2} & \dots & a_{ij} & \dots & a_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{n1} & a_{n2} & \dots & a_{nj} & \dots & a_{nn}  \\
\end{pmatrix}\textrm{; }X = \begin{pmatrix}
x_{1}\\
x_{2}\\
\dots\\
x_{i}\\
\dots\\
x_{n}
\end{pmatrix}\textrm{; }B = \begin{pmatrix}
b_{1}\\
b_{2}\\
\dots\\
b_{i}\\
\dots\\
b_{n}
\end{pmatrix}$$
<br>

$$L = \begin{pmatrix}
1 & 0 & \dots & 0 & \dots & 0  \\
l_{21} & 1 & \dots & 0 & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
l_{i1} & l_{i2} & \dots & 1 & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
l_{n1} & l_{n2} & \dots & \dots & l_{n(n-1)} & 1  \\
\end{pmatrix}$$
et
$$U = \begin{pmatrix}
u_{11} & u_{12} & \dots & u_{1j} & \dots & u_{1n}  \\
0 & u_{22} & \dots & u_{2j} & \dots & u_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & u_{jj} & \dots & u_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & 0 & \dots & u_{nn}  \\
\end{pmatrix}$$

Nous allons travailler sur les matrices suivantes :
$$A = \begin{pmatrix}
2 & -5 & 1 & 3 \\
4 & 7 & 8 & 2 \\
3 & 1 & 1 & 6 \\
4 & 1 & 7 & 9
\end{pmatrix}$$
$$X = \begin{pmatrix}
x_{1}\\
x_{2}\\
x_{3}\\
x_{4}
\end{pmatrix} \textrm{; } B = \begin{pmatrix}
5 \\
10\\
2\\
6
\end{pmatrix}$$

### Présentation de la méthode
#### Etape 1 : Décomposition LU
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
#### Etape 2 : Résolution du système L.Y = B
On utilise la formule de récurrence suivante
$$\left\{
  \begin{array}{rcl}
    y_{1} & = & \frac{b_{1}}{l_{1,1}}\\
&&\\
    y_{i} & = & \frac{1}{l_{i,i}}\left( y_{i} - \sum_{j = 1}^{i-1} l_{i,j}y_{j} \right) \forall i \in \{2,3, \dots n\}\\
  \end{array}
\right.
$$
#### Etape 3 : Résolution du système U.X = Y
On utilise la formule de récurrence suivante
$$\left\{
  \begin{array}{rcl}
    x_{n} & = & \frac{y_{n}}{u_{n,n}}\\
&&\\
    x_{i} & = & \frac{1}{u_{i,i}}\left( y_{i} - \sum_{j = i+1}^{i-1} u_{i,j}x_{j} \right) \forall i \in \{n-1,n-2, \dots, 1\}\\
  \end{array}
\right.
$$

#### Fonction à créer:
Nous allons devoir créer la fonction $f$ telle que :
$$f(p,i,j) = \sum_{k=1}^{p-1}l_{ik}\cdot u_{kj}$$
Que nous appellerons *somme(p,i,j)*<br>
$$g(i) = \sum_{j = i + 1 } u_{i,j} x_{j}$$
Que nous appellerons *sommeU(i)*<br>
$$h(i) = \sum_{j=1}^{i-1} l_{i,j}y_{j}$$
Que nous appellerons *sommeL(i)*<br>

### Algorithme

##### Entrées
**Saisir** les matrices $A$,$B$ et la taille $N$
##### Traitement
**Définition** de la fonction $f(p,i,j)$ <br>
**Définition** de la fonction $g(i)$ <br>
**Définition** de la fonction $h(i)$ <br>
<br>
// *Décomposition LU*<br>
**Pour** i **de** 1 **jusqu'à** (N-1) **Faire**<br>
**Pour** j **de** i **jusqu'à** N **Faire**<br>
U(i,j)← A(i,j) - somme(i,i,j)<br>
**Fin pour**<br>
**Pour** j **de** (i+1) **jusqu'à** N **Faire**<br>
L(i,j)← (1/U(i,i))* (A(j,i) - somme(i,j,i)) <br>
**Fin pour**<br>
**Fin pour**<br>
U(N,N)← A(N,N) - somme(N,N,N)
<br>
// *Résolution LY = B*<br>
Y(1,1)←B(1,1)/L(1,1)<br>
**Pour** i **de** 2 **jusqu'à** N **Faire**
<br>
Y(i,1) ← (1/L(i,i)) * (B(i,1) - sommeL(i));
<br>
**Fin pour**<br>
// *Résolution UX = Y*<br>
**Pour** i **de** (N - 1) **jusqu'à** 1 **par pas de** -1 **Faire**
<br>
X(i,1) ← (1/U(i,i)) * (Y(i,1) - sommeU(i));
<br>
**Fin pour**<br>
##### Sortie
Afficher la matrice X, A et B



###### Exemples:
A :
[2, -5, 1, 3
 4, 7, 8, 2
 3, 1, 1, 6
 4, 1, 7, 9]

B :
[5
10
2
6]
