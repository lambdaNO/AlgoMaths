# Résolution d'un système U.X = B
Il s'agit de développer un algorithme, puis un programme, permettant de transformer un système matriciel $U.X=B$ où $U$ est une matrice triangulaire supérieure.
Les formules de récurrences nécessaires sont données dans la partie à la méthode utlisée
<!-- \newline-->
Les formules de récurrences nécessaires sont données dans la partie relative à la méthode utilisée.
<!-- \newline-->
On utilise les notations suivantes :

$$A = \begin{pmatrix}
u_{11} & u_{12} & \dots & u_{1j} & \dots & u_{1n}  \\
0 & u_{22} & \dots & u_{2j} & \dots & u_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & u_{ij} & \dots & u_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
0 & 0 & \dots & 0 & \dots & u_{nn}  \\
\end{pmatrix}\textrm{; } X = \begin{pmatrix}
x_{1}\\
x_{2}\\
\dots\\
x_{i}\\
\dots\\
x_{n}
\end{pmatrix} \textrm{; } B = \begin{pmatrix}
b_{1}\\
b_{2}\\
\dots\\
b_{i}\\
\dots\\
b_{n}
\end{pmatrix}$$
Pour la matrice $U$ : $u_{i,j} = 0$ $\forall i > j$

Nous allons travailler sur les matrices suivantes afin de déterminer les matrices $\tilde{A}$ et $\tilde{B}$.

$$A = \begin{pmatrix}
2 & 3 & 1 & 3 \\
0 & 7 & 5 & 2 \\
0 & 0 & 1 & 3 \\
0 & 0 & 0 & 8
\end{pmatrix}\textrm{; } X = \begin{pmatrix}
x_{1}\\
x_{2}\\
x_{3}\\
x_{4}
\end{pmatrix} \textrm{; } B = \begin{pmatrix}
10 \\
5\\
26\\
8
\end{pmatrix}$$

### Présentation de la méthode

On a les formules de récurrence suivante :

$$\left\{
  \begin{array}{rcl}
    x_{n} & = & \frac{b_{n}}{u_{n,n}}\\
&&\\
    x_{i} & = & \frac{1}{u_{i,i}}\left( b_{i} - \sum_{j = i + 1}^{n} u_{i,j}x_{j} \right) \forall i \in \{n-1,n-2, \dots 1\}\\
  \end{array}
\right.
$$
Nous allons devoir créer la fonction $f$ telle que :
$$ f(x) = \sum_{j=i+1}^{n}u_{i,j}x_{j}$$

### Algorithme

##### Entrées
Saisir les matrices $U$,$B$ et la taille $N$
##### Traitement
**Définition** de la fonction $f$ *(appelée somme())*
<br>
X(1,N) ← B(N,1)/U(N,N);
<br>
**Pour** i **de** (N-1) **jusqu'à** 1 **par pas de** -1 **Faire**
<br>
X(i,1) ← (1/U(i,i)) * (B(i,1) - somme(i));
<br>
**Fin pour**
##### Sortie
Afficher la matrice X.


###### Exemples:
A :
[2, 3, 1, 3
 0, 7, 5, 2
 0, 0, 1, 3
 0, 0, 0, 8]

B :
[10
5
26
8]
