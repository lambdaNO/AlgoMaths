<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;}
.tg .tg-s6z2{text-align:center}
.tg .tg-baqh{text-align:center;vertical-align:top}
</style>

# Résolution d'une grille de sudoku (9x9)

Il s'agit de développer un algorithme non récursif, puis un programme, de résolution d'une grille de sudoku ($9\times 9$)
#### Règles
On considère un carré de 9 cases de côté. Ce carré est lui même divisé en 9 sous-carrés de 3 cases de côté.<br>
Chaque ligne, chaque colonne et chaque sous-carré doivent contenir une seule et unique fois tous les entiers de l'ensemble $\{1,2,3,4,5,6,7,8,9\}$
<br>
*Grille 1*
<table class="tg">
  <tr>
    <th class="tg-s6z2">1</th>
    <th class="tg-s6z2"></th>
    <th class="tg-s6z2"></th>
    <th class="tg-s6z2"><br></th>
    <th class="tg-baqh"></th>
    <th class="tg-baqh">7</th>
    <th class="tg-baqh"></th>
    <th class="tg-baqh">9</th>
    <th class="tg-baqh"></th>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">3</td>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2"></td>
    <td class="tg-baqh">2</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">8</td>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">9</td>
    <td class="tg-s6z2">6</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">5</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">5</td>
    <td class="tg-s6z2">3</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">9</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">8</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">2</td>
  </tr>
  <tr>
    <td class="tg-baqh">6</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">4</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh">3</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">4</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">7</td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">7</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">3</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
</table>

*Grille 2*
<table class="tg">
  <tr>
    <th class="tg-s6z2"></th>
    <th class="tg-s6z2">8</th>
    <th class="tg-s6z2"></th>
    <th class="tg-s6z2">1<br></th>
    <th class="tg-baqh"></th>
    <th class="tg-baqh">7</th>
    <th class="tg-baqh"></th>
    <th class="tg-baqh">6</th>
    <th class="tg-baqh"></th>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">4</td>
    <td class="tg-s6z2"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">5</td>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">6</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">9</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">2</td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-s6z2"></td>
    <td class="tg-s6z2">1</td>
    <td class="tg-s6z2">3</td>
    <td class="tg-s6z2"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">2</td>
    <td class="tg-baqh">4</td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh">2</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">6</td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">7</td>
    <td class="tg-baqh">5</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">3</td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">9</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">8</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">5</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">1</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">7</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh"></td>
  </tr>
  <tr>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">3</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">4</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">2</td>
    <td class="tg-baqh"></td>
    <td class="tg-baqh">9</td>
    <td class="tg-baqh"></td>
  </tr>
</table>

### Présentation de la méthode
L'algorithme de base de résolution d'une grille de sudoku consiste à parcourir la grille (par exemple de gauche à droite et de haut en bas) en testant les valeurs de $1$ à $9$ pour la cellule courante.<br>
Si aucune valeur n'est acceptable, alors on recule d'une case (initialement vierge) dans la grille et on propose la valeur suivante. Ensuite, on reprend la marche normale.
#### Fonctions à créer
On numérote les cases de 1 à 81 en allant de gauche à droite et de haut en bas.
##### Fonction Possible case :
1. *Function z = Possible_Case($k,n$)*
- $k$ : numéro de la case
- $n$ : chiffre à tester
- $z$ : valeur renvoyée par la fonction. $z = n$ si le chiffre peut être placé dans la case k et $z=0$ dans le cas contraire.

Cette fonction teste si le chiffre n peut petre placé dans le case numéro $k$. Pour cela, elle vérifie que le chiffre $n$ n'apparait pas déja dans la ligne, dans le colonne et dans le sous carré $3\times 3$ contenant la case. Si le test est positif, alors la fonction renvoie la valeur de $n$. Sinon, elle renvoie $0$

2. *Function x = Avancer_Case($k$)*
- $k$ : numéro de la case actuelle
- $x$ : valeur renvoyée par la fonction. $x$ est égal au numéro de la case vierge suivante

Cette fonction détermine et renvoie le numéro de la prochaine case vierge donc le numéro est strictement supérieur à $k$ (en allant dans le sens croissant des numéros de cases)

3. *Function y = Reculer_Case($k$)*
- $k$ : numéro de la case actuelle
- $y$ : valeur renvoyée par la fonction.
$y$ est égal au numéro de la case vierge précédente initialement vierge
Cette fonction détermine et renvoie le numéro de la précédente case initialement vierge dont le numéri est strictement inférieur à k


### Algorithme
//--------------------------------//<br>
//--------- Fonctions à ----------//<br>
//----------Créer ----------------//<br>
//--------------------------------//<br>
###### Fonction Possible_Case
**Fonction z =** Possible_Case(k,n)
r ← modulo(k,9)<br>
b ← int(k/9)<br>
**Si** r == 0 **Alors**<br>
c ← 9<br>
l ← b<br>
**Sinon**<br>
c ← r<br>
l ← b+1<br>
**Fin si**<br>
//--Traitement de la colonne-//<br>
**Pour** p **de** c **jusqu'à** (c+72) **Faire**<br>
**Si** *matsudoku(1,p)==n* **Alors**<br>
z ← 0<br>
**return** z<br>
**Fin si**<br>
**Fin pour**
//--Traitement de la ligne--//<br>
q ← 9*(l-1)+1<br>
**Pour** s **de** q **jusqu'à** (q+!) **Faire**<br>
**Si** *matsudoku(1,s)==n* **Alors**<br>
z ← 0<br>
**return** z<br>
**Fin si**<br>
**Fin pour**
//--Traitement du bloc--//<br>
t ← int(k/27)<br>
f ← modulo(k,27)<br>
**Si** f == 0 **Alors**<br>
lb ← t-1<br>
**Sinon**<br>
lb ← t<br>
**Fin si**<br>
w ← int(k/3)<br>
v ← modulo(k,3)<br>
**Si** f == 0 **Alors**<br>
cb ← w-1<br>
**Sinon**<br>
cb ← w<br>
**Fin si**<br>
//--Numéro de la case N°1 du block--//<br>
numb ← 3*cb + 1 + 27*lb<br>
**Pour** j **de** 0 **jusqu'à** 2
 **Faire**<br>
 **Pour** e **de** 0 **jusqu'à** 2
  **Faire**<br>
i ← numb + 9*j + e<br>
**Si** *matsudoku(1,i)* == n **Alors**<br>
z ← 0<br>
**return** z<br>
**Fin si**<br>
**Fin pour**<br>
**Fin pour**<br>
z ← n
return z<br>
**FinFonction**

###### Fonction Avancer_Case
**Fonction x =** Avancer_Case(k)<br>
**Si** k== 81 **Alors**<br>
x ← 82
**return** x <br>
**Fin si**<br>
temp ← k + 1<br>
**TantQue** *initsudoku(1,temp)* <>0 **Faire** <br>
temp ← temp + 1<br>
**FinTantQue**<br>
x ← temp<br>
**FinFonction**
#### Fonction Reculer_Case
**Fonction y =** Reculer_Case(k)<br>
temp ← k - 1<br>
**TantQue** *initsudoku(1,temp)* <>0 **Faire** <br>
temp ← temp - 1<br>
**FinTantQue**<br>
y ← temp<br>
**FinFonction**
###### Fonction AfficherGrille
**Fonction y =** AfficherGrille()<br>
**Pour** i **de** 1 **jusqu'à** 9 **Faire**<br>
**Pour** j **de** 1 **jusqu'à** 9 **Faire**<br>
*matsolution(i,j)* ← *matsudoku(1,(i-1) *  9+j)* <br>
**Fin pour**<br>
**Fin pour**<br>
**Afficher** *matsolution*<br>
**FinFonction**<br>
//--------------------------------//<br>
//--------- Programme ----------//<br>
//----------Principal-------------//<br>
//--------------------------------//<br>
##### Entrées
**Saisir** matsudoku *(matrice ligne de dimension (1,81))*
##### Traitement
nsudo ← Avancer_Case(0);<br>
firstn ← nsudo
**TantQue** nsudo <> 82 **Faire** <br>
valeurn ← matsudoku(1,nsudo)<br>
**Si** valeurn < 9 **Alors**<br>
sn ← 0
**Pour** test **de** (valeurn+1) **jusqu'à** 9 **Faire**<br>
rn ← Possible_Case(nsudo,test)<br>
**Si** rn <> 0 **Alors**<br>
matsudoku(1,nsudo) ← rn <br>
sn ← 1<br>
nsudo ← Avancer_Case(nsudo)<br>
**break** <br>
**Fin si**<br>
**Fin pour**<br>
**Si** sn == 0 **Alors**<br>
matsudoku(1,nsudo) ← 0<br>
nsudo ← Reculer_Case(nsudo)<br>
**Fin si**<br>
**SinonSi** nsudo == firstn **Alors**<br>
**break**<br>
**Sinon** <br>
matsudoku(1,nsudo) ← 0<br>
nsudo ← Reculer_Case(nsudo)<br>
**Fin si**<br>
**FinTantQue**<br>
**Si** nsudo <> firstn **Alors**<br>
**Afficher** la grille solution<br>
**Sinon**
**Afficher** "Aucune solution trouvée"
**Fin si**<br>

##### Sortie
Afficher la grille solution ou le message d'erreur
