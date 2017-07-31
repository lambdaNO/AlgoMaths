# Point fixe et suite définie par récurrence

Il s'agit de développer un algorithme, puis un programme, de résolution numérique de l'équation $(E)$ suivante :
$$-1 + (x^{2}+2)\times e^{-x}$$
Pour cela, on définit la fonction $f$ telle que :
$$ f(x) = x - 1 + (x^{2}+2)\times e^{-x}$$

Résoudre l'équation $(E)$ revient alors à résoudre $f(x)=x$ et donc à déterminer le point fixe $x_{0}$ tel que $f(x_{0}) = 0$

On montre que la suite numérique $(u_{n})$ converge vers $x_{0}$
$$\left\{
  \begin{array}{rcl}
    u_{n+1} & = & f(u_{n})\\
    u_{0} = 1
    \end{array}
\right.
\textrm{ et } \lim_{n \rightarrow \infty } (u_{n}) = x_{0}
$$
On donne $x_{0} =1.3190736769$ à $10^{-10}$ près. Nous déterminerons expérimentalement le nombre d'itérations $n$ nécéssaires pour obtenir $x_{0}$ à $10^{-3}$
### Présentation de la méthode
On saisit une valeur de $n$ puis on effectue $n$ itérations afin de calculer $u_{n}$
### Algorithme
#### Entrées
Saisir le nombre d'itérations n
#### Traitement
x ← 1
<br>
**Pour** i **de** (N-1) **jusqu'à** 1 **par pas de** -1 **Faire**
<br>
x = x - 1 + (x^{2} + 2)* exp(-x)
<br>
**Fin pour**
##### Sortie
**Afficher** la valeur de x
