# Approximation d'une intégrale par la méthode des trapèzes
Il s'agit de développer un algorithme, puis un programme, permettant de calcul numérique d'une intégrale
$$\int_{a}^{b} f(x)\textrm{dx}$$
où $f$ est une fonction continue sur un intervalle $[a,b]$. Nous allons utiliser la méthode des trapèzes

Nous allons réaliser un exemple sur l'intégrale suivante :
$$ I = \int_{1}^{5}x\ln(x)\textrm{dx}$$

### Présentation de la méthode
Comme nous l'avons dis précédemment, nous allons utiliser la méthode des trapèzes.

1. On découpe l'intervalle $[a,b]$ en $N$ parties et on pose :
$$ h = \frac{b-a}{N}$$
On obtient ainsi $N+1$ points
$$t_{i} = a + i \times \frac{b-a}{N} = a + i\times h$$
avec $i\in [0;N]$
2. On construit $N$ trapèzes comme indiqué ci-dessous (CF images).
- L'aire du premier trapèse est égale à :

$$A_{1} = \frac{f(a)+f(a+h)}{2}.h$$

- L'aire du second trapèze est égale à :

$$A_{2} = \frac{f(a+h)+f(a+2h)}{2}.h$$

- $\dots$

- L'aire du dernier trapèse est égale à :
$$A_{N} = \frac{f(a+(N-1).h)+f(b)}{2}.h$$

On écrit la somme des aires :

$$I = \int_{a}^{b} f(x)\textrm{dx} \approx A_{1} + A_{2} + \dots + A_{N} $$
$$I = \int_{a}^{b} =
\frac{f(a)+f(a+h)}{2}.h + \frac{f(a+h)+f(a+2h)}{2}.h +
\dots + \frac{f(a+(N-1).h)+f(b)}{2}.h
$$
En simplifiant l'expression, on obtient :
$$I = \int_{a}^{b} f(x)\textrm{dx} \approx
h \left(\frac{f(a)+f(b)}{2} + \sum_{i=1}^{N-1}f(a+i\cdot h)
  \right)
$$

### Algorithme

##### Entrées
Saisir a, b et N

##### Traitement
Définir la fonction f

h ← (b-a)/N;
<!-- -->
s ← 0;

**Pour** i **de** 1 **jusqu'à** (N-1) **Faire**

  s ← s + f(a+i*h)

**Fin pour**

I ← h*((f(a)+f(b))/2+s)

##### Sortie
Afficher la valeur de I.


###### Exemples:
