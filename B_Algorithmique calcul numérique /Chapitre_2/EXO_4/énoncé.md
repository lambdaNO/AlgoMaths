# Approximation d'une racine carré - Méthode de Héron

Il s'agit de développer un algorithme, puis un programme, permettant de déterminer une valeur approchée de la racine carré d'un nombre positif $a$.

On applique la méthode de Newton à la résolution de l'équation $f(x)=0$ où la fonction $f$ a l'expression suivante

$$f(x) = x^{2}-a$$

Il s'agit de déterminer un approximation de $\sqrt{a}$ avec une précision $p=10^{-4}$

Nous réaliserons l'application numérique : $\sqrt{7}$

### Présentation de la méthode
1. A partir d'une abscisse de départ $x_{0}$, on applique la formule de récurrence suivante :
$$x_{n+1} = x_{n} - \frac{f(x_{n})}{f'(x_{n})}$$
avec :
$$f(x) = x^{2} - a \textrm{ et } f'(x) = 2x$$


2. On arrête les calculs lorsque
$$|f(x_{n})|<p$$

##### Remarque
E, remplaçant $f(x_{n})$ et $f'(x_{n})$ par leurs expressions, on obtient la formule de récurrence suivante :
$$x_{n+1} = \frac{1}{2}\left(x_{n} + \frac{a}{x_{n}}\right)$$
La valeur initiale dans ce cas est $x_{0} = 2$
### Algorithme

#### Préambule
On crée la fonction $f$ suivante : (appelée f(t))
$$f(x) = x^{2} - a$$

On crée la fonction $f'$ suivante : (appelée fprime(t))
$$f'(x) =2x$$

#### Entrées
Saisir la valeur initiale a
<br>
Saisir la valeur de précision p
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
**Afficher** la valeur de $\sqrt{a}$
