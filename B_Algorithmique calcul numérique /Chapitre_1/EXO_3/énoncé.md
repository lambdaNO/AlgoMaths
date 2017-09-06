# Cryptographie - Le carré de Polybe
Il s'agit de développer un algorithme, puis un programme, permettant de crypter un mot en remplaçant chaque lettre de l'alphabet par les coordonnées (numéro de ligne; numéro de colonne) de sa position dans un carré de Polybe
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-s6z2{text-align:center}
.tg .tg-hgcj{font-weight:bold;text-align:center}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
  <tr>
    <th class="tg-s6z2"></th>
    <th class="tg-hgcj">1</th>
    <th class="tg-hgcj">2</th>
    <th class="tg-hgcj">3</th>
    <th class="tg-hgcj">4</th>
    <th class="tg-hgcj">5</th>
  </tr>
  <tr>
    <td class="tg-hgcj">1</td>
    <td class="tg-s6z2">A</td>
    <td class="tg-s6z2">B</td>
    <td class="tg-s6z2">C</td>
    <td class="tg-s6z2">D<br></td>
    <td class="tg-s6z2">E</td>
  </tr>
  <tr>
    <td class="tg-hgcj">2</td>
    <td class="tg-s6z2">F</td>
    <td class="tg-s6z2">G</td>
    <td class="tg-s6z2">H</td>
    <td class="tg-s6z2">I</td>
    <td class="tg-s6z2">J</td>
  </tr>
  <tr>
    <td class="tg-hgcj">3</td>
    <td class="tg-s6z2">K</td>
    <td class="tg-s6z2">L<br></td>
    <td class="tg-s6z2">M</td>
    <td class="tg-s6z2">N</td>
    <td class="tg-s6z2">O</td>
  </tr>
  <tr>
    <td class="tg-hgcj">4</td>
    <td class="tg-s6z2">P</td>
    <td class="tg-s6z2">Q</td>
    <td class="tg-s6z2">R</td>
    <td class="tg-s6z2">S</td>
    <td class="tg-s6z2">T</td>
  </tr>
  <tr>
    <td class="tg-hgcj">5</td>
    <td class="tg-s6z2">U</td>
    <td class="tg-s6z2">V/W</td>
    <td class="tg-s6z2">X</td>
    <td class="tg-s6z2">Y</td>
    <td class="tg-s6z2">Z</td>
  </tr>
</table></div>

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
