# Méthode de dichotomie
**CF** *A_Algorithmique mathématiques/Chapitre_1/EXO_2*

Il s'agit de développer un algorithme, puis un programme, de résolution numérique d'une équation par la méthode de dichotomie.

On considère l'équation $(E)$ suivante :
$$ x - e^{1}\times \sin(x) = 0$$
Il s'agit de déterminer la solution $\alpha \in [1,10]$ avec une précision $p=10^{-4}$

### Présentation de la méthode
1. On saisit l'expression de la fonction $f(x) = x - e^{1}\times \sin(x)$ ainsi que les bornes $a$ et $b$ de l'intervalle d'étude et la précision désirée $p$
2. On calcule la valeur : $m = \frac{a+b}{2}$ puis on coupe l'intervalle en deux en fonction du signe du produit $f(a)\times f(m)$
    - Si  $f(a)\times f(m) < 0$ alors on considère l'intervalle $[a,m]$
    - Si  $f(a)\times f(m) > 0$ alors on considère l'intervalle $[m,b]$
3. Si l'amplitude de l'intervalle est inférieure à $p$, on arrête le processus; Sinon, on calcule une nouvelle valeur de $m$.

##### Remarque :
A la fin du processus, les bornes de l'intervalle d'amplitude inférieure à $p$ se trouvent dans les variables $a$ et $b$
### Algorithme

#### Préambule
On crée la fonction $f$ suivante :
$$f(x) = x-e^{1}\times \sin(x)$$

#### Entrées
Saisir les bornes a et b de l'intervalle ainsi que la précision p

#### Traitement
**Définir** la fonction f(t)
<br>
**Tant que** (b-a)>p **Faire**
<br>
m ← (b+a)/2
<br>
**Si** f(a) * f(m) < 0 **Alors**
<br>
b ← m
<br>
**Sinon**
<br>
a ← m
<br>
**Fin si**
<br>
**Fin tant que**
##### Sortie
**Afficher** l'encadrement de la solution.
