# Recherche d'une stratégie de jeu.

On dispose de trois urnes notées A,B et C contenant chacune 10 jetons indiscernables au toucher :
- L'urne A contient 4 jetons noirs et 6 jetons blancs
- L'urne B contient 7 jetons noirs et 3 jetons blancs
- L'urne C contient 5 jetons noirs et 5 jetons blancs

Le jeu consiste à extraire successivement un jeton dans chacune des trois urnes, le joueur pouvant choisir d'effectuer ces tirages soit dans l'ordre A,B puis C, soit dans l'ordre A,C puis B.
Lorsque le jeton extrait de la deuxième urne est d'une couleur différente de celui extrait de la première, le joueur gagne un point, sinon il pert un point. Lorsque le jeton extrait de la troisième urne est d'une couleur différente de celui extrait de la deuxième, le joueur gagne un point, sinon il pert un point.

La partie est gagnée si le total des points marqués est égal à 2.

On note les évènements suivant :
- $(G_{1})$ : *Le joueur a gagné en effectuant les tirages dans l'ordre ABC*
- $(G_{2})$ : *Le joueur a gagné en effectuant les tirages*

On se propose d'étudier si l'un des deux ordres de tirages proposés est plus favoravle au joueur que l'autre.


### Algorithme
#### Entrées :
  - $n$ : Le nombre de parties

#### Sorties :
  - $f(G_{1})$ : La fréquence de l'évènement $G_{1}$
  - $f(G_{2})$ : La fréquence de l'évènement $G_{2}$.

##### Méthode utilisée :

- Pour effectuer la simulation du tirage dans une urne, on génère un nombre aléatoire $p$ compris entre 1 et 10 puis on teste la valeur de $p$ comme indiqué ci-après.
    - Pour l'urne A
      - Si p est compris entre 1 et 4, alors il s'agit d'un jeton noir
      - Si p est compris entre 5 et 10, alors il s'agit d'un jeton blanc
    - Pour l'urne B
        - Si p est compris entre 1 et 7, alors il s'agit d'un jeton noir
        - Si p est compris entre 8 et 10, alors il s'agit d'un jeton blanc
    - Pour l'urne C
        - Si p est compris entre 1 et 5, alors il s'agit d'un jeton noir
        - Si p est compris entre 6 et 10, alors il s'agit d'un jeton blanc
- Après chaque partie, oon effectue un test pour savoir si le joueur à gagné
- Au bout de $n$ partie, on calcule les fréquences demandées.

#### Remarque sur l'implémentation

Chaque tirage dans une urne est simulé par la génération d'une nombre aléatoire compris entre 1 et 10.
Par exemple, pour l'urne A, d(1,1) est ce nombre aléatoire. On procède alors de la manière suivante :
- Si d(1,1) est compris entre 1 et 4, alors il s'agit du tirage d'un jeton noir
- Si d(1,1) est compris entre 5 et 10, alors il s'agit du tirage d'un jeton blanc

On procédera de la même manière pour les deux autres urnes.

#### Conjecture :
Les probabilités convergent vers les valeurs numériques suivantes :
$$P(G_{1}) = \frac{27}{100} \textrm{ et }P(G_{1}) = \frac{23}{100}$$
On peut donc en déduire que l'évènement $G_{1}$ est plus favorable au joueur.
