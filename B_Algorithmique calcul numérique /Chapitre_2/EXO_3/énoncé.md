# Méthode de Newton

Il s'agit de développer un algorithme, puis un programme, de résolution numérique d'une équation par la méthode de Newton.

On considère l'équation $(E)$ suivante :
$$ x - e^{1}\times \sin(x) = 0$$
Il s'agit de déterminer la solution $\alpha \in [1.5,5]$ avec une précision $p=10^{-4}$

### Présentation de la méthode
1. A partir d'une abscisse de départ $x_{0}$, on applique la formule de récurrence suivante :
$$x_{n+1} = x_{n} - \frac{f(x_{n})}{f'(x_{n})}$$
2. On arrête les calculs lorsque
$$|f(x_{n})|<p$$
### Algorithme

#### Préambule
On crée la fonction $f$ suivante : (appelée f(t))
$$f(x) = x-e^{1}\times \sin(x)$$

On crée la fonction $f'$ suivante : (appelée fprime(t))
$$f'(x) = 1-e^{1}\times \cos(x)$$

#### Entrées
Saisir les bornes a et b de l'intervalle ainsi que la précision p
<br>
Saisir la valeur initiale x0
#### Traitement
**Définir** la fonction f(t)
<br>
**Définir** la fonction fprime(t)
<br>
**Définir** le nombre maximal d'itérations N
<br>
x ← x0
<br>
**Tant que** abs(f(x)) > p & N > 0 **Faire**
<br>
x ← x - f(x)/fprime(x)
<br>
N ← N - 1
**Fin tant que**
##### Sortie
**Afficher** la valeur de x
