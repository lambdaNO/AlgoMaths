# Résolution d'un système L.X = B
Il s'agit de développer un algorithme, puis un programme, permettant de transformer un système matriciel $L.X=B$ où $L$ est une matrice triangulaire inférieure.
Les formules de récurrences nécessaires sont données dans la partie à la méthode utlisée
<!-- \newline-->
Les formules de récurrences nécessaires sont données dans la partie relative à la méthode utilisée.
<!-- \newline-->
On utilise les notations suivantes :

$$L = \begin{pmatrix}
l_{11} & 0 & \dots & 0 & \dots & 0  \\
l_{21} & l_{22} & \dots & 0 & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
l_{i1} & l_{i2} & \dots & l_{ij} & \dots & 0  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
l_{n1} & l_{n2} & \dots & l_{nj} & \dots & l_{nn}  \\
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
2 & 0 & 0 & 0 \\
1 & 7 & 0 & 0 \\
2 & -2 & 1 & 0 \\
5 & 1 & 7 & 8
\end{pmatrix}\textrm{; } X = \begin{pmatrix}
x_{1}\\
x_{2}\\
x_{3}\\
x_{4}
\end{pmatrix} \textrm{; } B = \begin{pmatrix}
2 \\
5\\
14\\
4
\end{pmatrix}$$

### Présentation de la méthode

On a les formules de récurrence suivante :

$$\left\{
  \begin{array}{rcl}
    x_{1} & = & \frac{b_{1}}{l_{1,1}}\\
&&\\
    x_{i} & = & \frac{1}{l_{i,i}}\left( b_{i} - \sum_{j = 1}^{i-1} l_{i,j}x_{j} \right) \forall i \in \{2,3, \dots n\}\\
  \end{array}
\right.
$$
Nous allons devoir créer la fonction $f$ telle que :
$$ f(x) = \sum_{j=i+1}^{n}l_{i,j}x_{j}$$

### Algorithme

##### Entrées
Saisir les matrices $L$,$B$ et la taille $N$
##### Traitement
**Définition** de la fonction $f$ *(appelée somme())*
<br>
X(1,1) ← B(1,1)/L(1,1);
<br>
**Pour** i **de** 2 **jusqu'à** N **Faire**
<br>
X(i,1) ← (1/L(i,i)) * (B(i,1) - somme(i));
<br>
**Fin pour**
##### Sortie
Afficher la matrice X.


###### Exemples:
A :
[2, 0, 0, 0
 1, 7, 0, 0
 2, -2, 1, 0
 5, 1, 7, 8]

B :
[2
5
14
4]
