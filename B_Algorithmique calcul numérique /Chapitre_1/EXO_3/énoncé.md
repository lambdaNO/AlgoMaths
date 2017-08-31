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
|  	| 1 	| 2 	| 3 	| 4 	| 5 	|
|:-:	|:-:	|:---:	|:-:	|:-:	|:-:	|
| 1 	| A 	| B 	| C 	| D 	| E 	|
| 2 	| F 	| G 	| H 	| I 	| J 	|
| 3 	| K 	| L 	| M 	| N 	| O 	|
| 4 	| P 	| Q 	| R 	| S 	| T 	|
| 5 	| U 	| V/W 	| X 	| Y 	| Z 	|

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
<br>
tableau ← ['A' 'B' 'C' 'D' 'E';
          'F' 'G' 'H' 'I' 'J';
          'K' 'L' 'M' 'N' 'O';
          'P' 'Q' 'R' 'S' 'T';
          'U' 'V' 'X' 'Y' 'Z']
<br>
c ← ""
<br>
k ← 1
<br>
**Tant que** k <= length(t) **Faire**
<br>
L ← part(t,k) // lettre n° K
<br>
**Pour** i **de** 1 **jusqu'à** 5 **Faire**
<br>
**Pour** j **de** 1 **jusqu'à** 5 **Faire**
<br>
**Si** L == tableau(i,j) **Alors**
<br>
c ← c + string(i) + string(j) + " "
<br>
**Fin si**
<br>
**Fin pour**
<br>
**Fin pour**
k ← k + 1
<br>
<br>
**Fin tant que**
<br>
**Fin fonction**

#### Fonction de décryptage

**fonction** t = décryptage( c )
<br>
tableau ← ['A' 'B' 'C' 'D' 'E';
          'F' 'G' 'H' 'I' 'J';
          'K' 'L' 'M' 'N' 'O';
          'P' 'Q' 'R' 'S' 'T';
          'U' 'V' 'X' 'Y' 'Z']
<br>
t ← ""
<br>
i ← 1
<br>
**Tant que** i <= length( c ) **Faire**
<br>
x ← evstr(part(c,i)) // premier chiffre
<br>
y ← evstr(part(c,i+1)) // second chiffre
<br>
i ← i + 3
<br>
t ← t + tableau(x,y)
<br>
**Fin tant que**
**Fin fonction**
##### Sortie

Afficher le texte crypté ou décrypté
