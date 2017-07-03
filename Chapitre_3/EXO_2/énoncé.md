# La suite de Syracuse
On appelle suite de Syracuse, une suite d'entiers naturels définie de la manière suivante :
  - Si le nombre est pair, alors on le divise par deux (2/n)
  - Si le nombre est impair, alors on le multiplie par trois et on ajoute 1 (3n+1)

En répétant l'opération, on obtient une suite d'entier positifs dont chacun des entiers ne dépend que de son prédécesseur.
Par exemple, pour une suite de Syracuse dont le premier terme est 14, on obtient :

14, 7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1, 4, 2 ...

Dès que le nombre 1 est atteint, la suite de valeur 1, 4, 2, 1, 4, 2 se répète indéfiniment en un cycle de longueur 3, appelé cycle trivial.

Si l'on était parti d'un autre entier en lui appliquant les même règles, on aurait obtenu une suite différente. A priori, il serait possible que la suite de Syracuse de certaines valeurs de départ n'atteigne jamais la valeur 1, soit qu'elle aboutisse à un cycle différent du cycle trivial, soit qu'elle diverge vers l'infini. Or, on n'a jamais trouvé d'exemple de suite obtenue suivant les règles données qu' n'aboutisse à 1 et, par suite, au cycle trivial.

https://fr.wikipedia.org/wiki/Conjecture_de_Syracuse


### Algorithme
#### Entrées :
$n$ : l'entier à partir duquel on souhaite faire démarer la suite.
#### Sorties :
Les 30 premiers termes de la suite de Syracuse (perso, je vais en demander plus --")

#### Compléments sur la méthode utilisée :
    1. On effectue la saisie
    2. On test la parité du nombre
    3. On effectue l'opération en fonction du résultat du test.
