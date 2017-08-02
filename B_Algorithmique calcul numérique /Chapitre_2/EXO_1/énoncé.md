# Ensembles de Mandelbrot et de Julia

### Ensemble de Mandelbrot
L'ensemble de Mandelbrot est une fractale définie comme l'ensemble des points du plan complexe d'affixe $c$ pour lesquels la suite $(z_{n})$ est convergente. cette suite est définie par la formule de récurrence suivante :
$$\left\{
  \begin{array}{rcl}
    z_{0} & = & 0\\
    z_{n+1} & = & z_{n}^{2} + c
    \end{array}
\right.
\textrm{ ; pour } n \geq 0\textrm{, } z_{0} = 0 \textrm{ et } c \textrm{ variable.}  
$$
Une fractale est une figure géométrique constituée d'un motif qui se répès à l'infinie (si on effectue un zoom sur une partie de la figure, on retrouve le même motif)
### Ensemble de Julia
Si on fixe la valeur de $c$, l'ensemble de Julia est l'ensemble des points du plan complexe d'affixe $z_{0}$ pour lesquels la suite $(z_{n})$ est convergente. Cette suite est définie par la formule de récurrence suivante :
$$\left\{
  \begin{array}{rcl}
    z_{0} & = & a'+ib'\\
    z_{n+1} & = & z_{n}^{2} + c
    \end{array}
\right.
\textrm{ ; pour } n \geq 0\textrm{, } z_{0} = a'+ib' \textrm{ et } c \textrm{ fixé.}  
$$

Il s'agit de développer un algorithme, puis un programme permettant de représenter ces deux ensembles.
<br>
Nous allons représenter l'ensemble :
  - de Mandelbrot pour $c=a+ib$ avec $a\in[-2,1, 0,6]$ et $b\in[-1,2;1,2]$
  - de Julia pour $c = 0.285 + 0.010\cdot i$ et $z_{0} = a' + i b'$ avec $a'\in [-1,1]$ et $b\in[-1,2;1,2]$

### Présentation de la méthode
1. Convergence de la suite $(z_{n})$ <br>
On admet que s'il existe $n$ tel que $|z_{n}| > 2$ alors la suite $(z_{n})$ est divergente.
2. Itérations successives : <br>
On considère *taille_x* valeurs pour $a$ et *taille_y* valeurs pour $b$ dans leurs intervalles respectifs (on fait de même pour les valeurs de $a'$ et $b'$). Pour chaque couple de valeurs, on teste si la suite $(z_{n})$ est convergente ou non.  On effectuer pour cela $k$ itérations.
3. Dans le langage Scilab, on construit une matrice $M$ de la taille *taille_y*$\times$*taille_x* (c'est à dir eune matrice de *taille_y* lignes et *taille_x* colonnes). On note $m_{i,j}$ le terme de la matrice $M$ situé à l'intersection de la ligne $i$ et de la colonne $j$.<br>
On attribue alors les valeurs suivantes :
    - $m_{N+1-j,i} = 8$ si la suite $(z_{n})$ est divergente pour le complexe $c=a_{i} + i b_{j}$ (ensemble de Mandelbrot) ou pour $z_{0} = a_{i}' + ib_{j}$ (ensemble de Julia)
    - $m_{N+1-j,i} = 1$ si la suite $(z_{n})$ est convergente pour le complexe $c=a_{i} + i b_{j}$ (ensemble de Mandelbrot) ou pour $z_{0} = a_{i}' + ib_{j}$ (ensemble de Julia)
<br>
**L'écriture d'un complexe avec Scilab :**
$c = 3 + 2i$ $\Leftrightarrow$ $c = 3 + \%i \ast 2$
### Précisions relatives aux indices
Pour représenter l'ensemble de Mandelbrot, on note C le point d'affixe $c=a+ib$ avec $a\in[-2,1, 0,6]$ et $b\in[-1,2;1,2]$. On considère *taille_x* valeurs pour $a$ et *taille_y* valeurs pour $b$ dans leurs intervalles respectifs. On choisit arbitrairement un *facteur* multiplicatif. On a les relations suivantes :
$$\textrm{taille_x} = \textrm{int}((x_{\max}-x_{\min})\times \textrm{facteur}) $$
$$\textrm{taille_y} = \textrm{int}((y_{\max}-y_{\min})\times \textrm{facteur}) $$
Le point $C_{i,j}$ du plan complexe a pour affixe $c_{i,j} = a_{i} + ib_{j}$ avec :
$$ a_{i} = x_{min} + (i-1)\times\frac{x_{\max}-x_{\min}}{\textrm{taille_x}-1} \textrm{avec } 1 \leq i \leq \textrm{taille_x} $$
$$ a_{j} = y_{min} + (j-1)\times\frac{y_{\max}-y_{\min}}{\textrm{taille_y}-1} \textrm{avec } 1 \leq j \leq \textrm{taille_y} $$
Les deux schémas suivants représentent la position du point $C_{i,j}$ dans le plan complexe et la position du chiffre correspondant (1 ou 8) dans la matrice $M$ de taille *taille_y*$\times$*taille_x*

### Algorithme
#### Ensemble de Mandelbrot
##### Entrées
**Saisir :**
  - n_itérations
  - facteur
  - xmin, xmax
  - ymin, ymax
##### Traitement
taille_x ← int((xmax-xmin) * facteur)<br>
taille_y ← int((ymax-ymin) * facteur)<br>
**Définir**
  - vecteur_x comportant *taille_x* valeurs
  - vecteur_y comportant *taille_y* valeurs
  - matrice M de taille *taille_y*$\times$*taille_x*

**Pour** j **de** 1 **jusqu'à** taille_y **Faire** <br>
**Pour** i **de** 1 **jusqu'à** taille_x **Faire** <br>
  c ← vecteur_x(i) + %i*vecteur_y(j)<br>
  c0 ← c<br>
  k ← 0<br>
**Tant que** (abs( c )<2 & k < n_itérations) **Faire**
  c ← c^2 + c0 <br>
  k ← k + 1 <br>
**Fin tant que**<br>
**Si** k == n_itérations **Alors**<br>
// Point de l'ensemble de Mandelbrot (noir)<br>
M(taille_y + 1 - j, i) ← 1
<br>
**Sinon**<br>
// Point en dehors de l'ensemble de Mandelbrot (blanc)
<br>
M(taille_y + 1 - j, i) ← 8
<br>
**Fin si**<br>
**Fin pour**<br>
**Fin pour**
##### Sortie
Tracer l'ensemble des points de la matrice M
#### Ensemble de Julia
##### Entrées
**Saisir :**
  - n_itérations
  - facteur
  - xmin, xmax
  - ymin, ymax
  - c0
##### Traitement
taille_x ← int((xmax-xmin) * facteur)<br>
taille_y ← int((ymax-ymin) * facteur)<br>
**Définir**
  - vecteur_x comportant *taille_x* valeurs
  - vecteur_y comportant *taille_y* valeurs
  - matrice M de taille *taille_y*$\times$*taille_x*

**Pour** j **de** 1 **jusqu'à** taille_y **Faire** <br>
**Pour** i **de** 1 **jusqu'à** taille_x **Faire** <br>
  c ← vecteur_x(i) + %i*vecteur_y(j)<br>
  k ← 0<br>
**Tant que** (abs( c )<2 & k < n_itérations) **Faire**
  c ← c^2 + c0 <br>
  k ← k + 1 <br>
**Fin tant que**<br>
**Si** k == n_itérations **Alors**<br>
// Point de l'ensemble de Mandelbrot (noir)<br>
M(taille_y + 1 - j, i) ← 1
<br>
**Sinon**<br>
// Point en dehors de l'ensemble de Mandelbrot (blanc)
<br>
M(taille_y + 1 - j, i) ← 8
<br>
**Fin si**<br>
**Fin pour**<br>
**Fin pour**
##### Sortie
Tracer l'ensemble des points de la matrice M
