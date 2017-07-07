# La planche de Galton

La figure dans le dossier représente une paroi inclinée sur laquelle on a planté 5 rangées de clous.

Le jeu consiste à lâcher $n$ billes (une par une) par le tube d'entrée. A chaque rangée de clou, les billes passent, au hasard, soit à droite, soit à gauche des clous qu'elles rencontrent.

Dans la partie inférieure de la paroi, les billes sont collectées dans $6$ boîtes numérotées de 1 à 6

On note $B_{k}$, l'évènement *La bille tombe dans la boîte k*
On souhaite effectuer la simulation pour $n$ billes et calculer les fréquences des évènements $B_{k}$.


### Algorithme
#### Entrées :
  - $n$ : le nombre de billes

#### Sorties :
  - Les fréquences des évènements $B_{k}$.

#### Compléments sur la méthode utilisée
- Durant son parcours, la bille rencontre 5 clous. A chaque rencontre, on note le passage aléatoire à droite (D) ou au gauche (G) de la bille.
Par exemple, le résultat (G,D,G,G,G) est un des parcours de la bille qui a été collectée par la boîte numéro 2
- On remarque que les billes collectées par la boîte ont nécessairement effectué 4 passages à gauche (G) et un passage à droite (D). On en déduit donc les règles suivantes :
  - Boîte n°1 : 0D - 5G
  - Boîte n°2 : 1D - 4G
  - Boîte n°3 : 2D - 3G
  - Boîte n°4 : 3D - 2G
  - Boîte n°5 : 4D - 1G
  - Boîte n°6 : 5D - 0G   
- Au bout de $n$ parcours, on calcule les fréquences de $B_{k}$.

#### Remarques :
- On attribue la valeur 0 lorsque la bille passe à gauche du clou et 1 lorsque la bille passe a droite.
Par exemple, une somme $r = 2$ correspond à deux passages à droite et trois passages à gauche. La bille obtenue pour la somme $r=2$ est donc collectée dans la boîte numéro 3 c'est à dire par la boîte dont le numéro est égale au nombre de passage à droite + 1.
On ajoute alors 1 au nombre de billes de la boite trois

De manière générale, la bille effectuant $r$ passages à droite sera collectée par la boîte numéro $r+1$.

- l'argument rect=[xmin,ymin,xmax,ymax] de la fonction plot2d3 permet de limiter le tracé à la zone comprise dans le triangle $ABCD$ défini par les coordonnées des deux points $A$ et $C$ : A(xmin,ymin) et C(xmax,ymax).  
