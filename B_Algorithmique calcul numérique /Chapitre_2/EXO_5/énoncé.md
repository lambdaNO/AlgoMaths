# Détermination de la constante d'Euler-Mascheroni

Il s'agit de développer un algorithme, puis un programme, permettant de déterminer les $5$ premières décimales de la constante d'Euler-Mascheroni, notée $\gamma$ et définie par :
$$\gamma = \lim_{n \rightarrow \infty } \left( 1+ \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + ... + \frac{1}{n} - \ln(n) \right)$$
$$\gamma = \lim_{n \rightarrow \infty } \left(\sum_{k=1}^{n}\left(\frac{1}{k}\right)-\ln(n)\right)$$
On pourra comparer les résultats numériques avec la valeur approchée suivante :
$$\gamma \approx0.5772156649015328$$
### Présentation de la méthode
On effectue $n$ itération afin de calculer la somme
$$\sum_{k=1}^{n} \left(\frac{1}{k}\right)$$
On prendra : $n \geq 200000$
### Algorithme

#### Préambule
On crée la fonction somme(n) suivante :
$$\sum_{k=1}^{n} \left(\frac{1}{k}\right)$$

#### Entrées
Saisir le nombre d'itérations n
#### Traitement
**Définir** la fonction somme()
<br>
g ← somme(n) - log(n)
##### Sortie
**Afficher** la valeur de $\sqrt{a}$
