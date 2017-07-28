# Méthode d'élimination de Gauss
Il s'agit de développer un algorithme, puis un programme, permettant de transformer un système matriciel $A.X=B$ en un système équivalent $\tilde{A}.X=\tilde{B}$ où $\tilde{A}$ est une matrice triangulaire supérieure déterminée à partir de la matrice $A$.
<!-- \newline-->
Les formules de récurrences nécessaires sont données dans la partie relative à la méthode utilisée.
<!-- \newline-->
On utilise les notations suivantes :

$$A = \begin{pmatrix}
a_{11} & a_{12} & \dots & a_{1j} & \dots & a_{1n}  \\
a_{21} & a_{22} & \dots & a_{2j} & \dots & a_{2n}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{i1} & a_{i2} & \dots & a_{ij} & \dots & a_{in}  \\
\dots & \dots & \dots & \dots & \dots & \dots  \\
a_{n1} & a_{n2} & \dots & a_{nj} & \dots & a_{nn}  \\
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

Nous allons travailler sur les matrices suivantes afin de déterminer les matrices $\tilde{A}$ et $\tilde{B}$.

$$A = \begin{pmatrix}
2 & -5 & 1 & 3 \\
4 & 7 & 8 & 2 \\
3 & 1 & 1 & 6 \\
4 & 1 & 7 & 9
\end{pmatrix}\textrm{; } X = \begin{pmatrix}
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

L'algorithme d'élimination de Gauss comporte $n$ étapes. On note $a_{i,j}^{(k)}$ l'élément de la $i^{\textrm{ème}}$ et de la $j^{\textrm{ème}}$ colonne de la matrice $A$ à l'étape $k$. On obtient la matrice $A^{(n)} = \tilde{A}$ au bout de $n$ étapes.
<!-- \newline-->
On initialise l'algorithme avec $A^{(1)}$ = A puis on calcul les étapes $k=1$, $k=2$, $k=3$, $\dots$, $k= n-1$ en utilisant les formules de récurrences suivantes définies pour $i\in\{$$k+1$,$k+2$,$\dots$,$n\}$ :

$$\left\{
  \begin{array}{rcl}
    a_{i,j}^{(k+1)} & = & a_{i,j}^{(k)} - \frac{a_{i,k}^{(k)}}{a_{k,k}^{(k)}}\times a_{k,j}^{(k)} \textrm{; } j \in \{k+1,k+2, \dots, n\}\\
&&\\
    b_{i}^{(k+1)}& = & b_{i}^{(k)} - \frac{a_{i,k}^{(k)}}{a_{k,k}^{(k)}}\times b_{k}^{(k)} \\
  \end{array}
\right.
$$


### Algorithme

##### Entrées
Saisir les matrices $A$ et $B$
##### Traitement
AT ← A;
<!-- -->
BT ← B;

**Pour** k **de** 1 **jusqu'à** (N-1) **Faire**

**Pour** i **de** (k+1) **jusqu'à** N **Faire**

q ← AT(i,k)/AT(k,k);

BT(i,1) ← BT(i,1) - q*BT(k,1)

AT(i,k) ← 0

**Pour** j **de** (k+1) **jusqu'à** N **Faire**

AT(i,j) ← AT(i,j) - q*AT(k,j)
<!-- -->
**Fin pour**

**Fin pour**

**Fin pour**

##### Sortie
Afficher les valeurs de AT;BT;


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
