# Cryptographie - Le carré de Polybe
Il s'agit de développer un algorithme, puis un programme, permettant de crypter un mot en remplaçant chaque lettre de l'alphabet par les coordonnées (numéro de ligne; numéro de colonne) de sa position dans un carré de Polybe
<!--
$$
\begin{center}
\begin{tabular}{|l|l|l|l|l|l|}
\hline
 & 1 & 2 & 3 & 4 & 5 \\ \hline
1 & A & B & C & D & E \\ \hline
2 & F & G & H & I & J \\ \hline
3 & K & L & M & N & O \\ \hline
4 & P & Q & R & S & T \\ \hline
5 & U & V/W & X & Y & Z \\ \hline
\end{tabular}
\end{center}
\end{center}
$$
-->
***A**(1,1), **B**(1,2), **C**(1,3), **D**(1,4), **E**(1,5)*

***F**(2,1), **G**(2,2), **H**(2,3), **I**(2,4), **J**(2,5)*

***K**(3,1), **L**(3,2), **M**(3,3), **N**(3,4), **O**(4,5)*

***P**(4,1), **Q**(4,2), **R**(4,3), **S**(4,4), **T**(4,5)*

***U**(5,1), **V/W**(5,2), **X**(5,3), **Y**(5,4), **Z**(5,5)***

### Exemple :
Le mot *MATH* sera crypté par la liste de nombres à deux chiffres : 33 11 45 23

Nous allons réaliser l'algorithme et un programme permettant de crypter et décrypter un mot.

Nous crypterons les mots *BONJOUR* et *ALGORITHMIQUE* et nous décrypterons les mots suivants : *21 11 34 45 11 44 45 24 42 51 14* *33 11 22 24 42 51 15*

### Présentation de la méthode
##### Cryptage du texte :
- On définit un tableau de taille 5x5 comportant les lettres de l'alphabet.
- Pour chaque lettre du mot à crypter, on détermine ses coordonnées dans le tableau
- On affiche la liste de toutes les coordonnées séparées par des espaces. Cette liste correspond au texte crypté.
##### Déryptage du texte :
- On définit un tableau de taille 5x5 comportant les lettres de l'alphabet.
- Pour chaque nombre de deux chiffres, on détermine la lettre correspondante à ces coordonnées dans le tableau
- On affiche le texte décrypté.

###### Remarque :
Les lettres *V* et *W* sont toutes deux cryptées par *52*. La lettre *W* des mots à crypter doit être remplacée par la lettre *V* avant cryptage


### Algorithme

#### Entrées
Le texte à crypter ou décrypter

#### Traitement
##### Fonction de cryptage

**fonction** c = cryptage( t )
<!-- -->
tableau ← ['A' 'B' 'C' 'D' 'E';
          'F' 'G' 'H' 'I' 'J';
          'K' 'L' 'M' 'N' 'O';
          'P' 'Q' 'R' 'S' 'T';
          'U' 'V' 'X' 'Y' 'Z']
<!-- -->
c ← ""
<!-- -->
k ← 1
<!-- -->
**Tant que** k <= length(t) **Faire**
<!-- -->
L ← part(t,k) // lettre n° K
<!-- -->
**Pour** i **de** 1 **jusqu'à** 5 **Faire**
<!-- -->
**Pour** j **de** 1 **jusqu'à** 5 **Faire**
<!-- -->
**Si** L == tableau(i,j) **Alors**
<!-- -->
c ← c + string(i) + string(j) + " "
<!-- -->
**Fin si**
<!-- -->
**Fin pour**
<!-- -->
**Fin pour**
k ← k + 1
<!-- -->
<!-- -->
**Fin tant que**
<!-- -->
**Fin fonction**

#### Fonction de décryptage

**fonction** t = décryptage( c )
<!-- -->
tableau ← ['A' 'B' 'C' 'D' 'E';
          'F' 'G' 'H' 'I' 'J';
          'K' 'L' 'M' 'N' 'O';
          'P' 'Q' 'R' 'S' 'T';
          'U' 'V' 'X' 'Y' 'Z']
<!-- -->
t ← ""
<!-- -->
i ← 1
<!-- -->
**Tant que** i <= length( c ) **Faire**
<!-- -->
x ← evstr(part(c,i)) // premier chiffre
<!-- -->
y ← evstr(part(c,i+1)) // second chiffre
<!-- -->
i ← i + 3
<!-- -->
t ← t + tableau(x,y)
<!-- -->
**Fin tant que**
**Fin fonction**
##### Sortie

Afficher le texte crypté ou décrypté
