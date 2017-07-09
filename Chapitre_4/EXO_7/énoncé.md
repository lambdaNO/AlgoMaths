# Cryptographie symétrique ou à clé secrète


La cryptographie est une des disciplines de la cryptologie s'attachant à
protéger des messages (assurant conﬁdentialité. authenticité et intégrité) en s'aidant souvent de secrets ou de clés.
La cryptographie symétrique, également dite à clé secrète (par opposition à la cryptographie à clé publique) est la plus ancienne forme de chiffrement.
Pour procéder au codage d’un texte, ce travail pratique utilise le code
ASCII des caractères.

L'objectif de cet exercice est de créer :
- Une fonction de chiffrement permettant de crypter une phrase écrite en majuscules sans apostrophes et où les espaces sont remplacées par des signes @
- Une fonction de décryptage permettant de retrouver le message chiffré par le fonction de chiffrement précédente.

##### Informations complémentaires
1. Le code ASCII consiste à associer à chaque caractères (lettres de l'alphabet, chiffres, signes de ponctuation) un code numérique que l'on appelle son code ASCII
Par exemple, @ est associé à 64, celui de A est associé à 65 et celui de Z à 90.
Pour toutes les lettres majuscules de l'alphabet y compris le symbole #, le code ASCII utilisé  est entier $n$ tel que $64\leq n \leq 90$
2. La fonction ascii("A")=65 et la fonction ascii(65)=A

#### Le fonction de cryptage :
On note cryptage("L") la fonction de cryptage qui, pour la lettre L (lettre majuscule ou symbole @) effectue les opérations suivantes :
1. La fonction détermine l'entier n=ascii("L"). n appartenant à l'intervalle $[64,90]$
2. La fonction calcul le reste de la division euclidienne de $7(n-64)$ par $27$. Soit $r(n)$ ce reste
3. La fonction ajoute 64 à ce reste $r(n)$ et on pose $m=r(n)+64$  
4. La fonction détermine enfin le caractère associé à ce code ASCII : ascii(n)

###### Exemple
- La lettre F qui a un code ASCII égal à 70 sera chiffré ainsi :
$$7\times(70-64) = 27 x 1 + 15\textrm{ d'où } r(70)=15;m=15+64 = 79$$
et ascii(79)="O"
- La lettre M qui a un code ASCII égal à 77 sera chiffré ainsi :
$$7\times(77-64) = 27 x 3 + 10\textrm{ d'où } r(77)=10;m=10+64 = 74$$
et ascii(74)="J"


#### Le fonction de décryptage :
On note décryptage("L") la fonction de cryptage qui, pour la lettre L (lettre majuscule ou symbole @) effectue les opérations suivantes :
1. La fonction détermine l'entier m=ascii("L"). n appartenant à l'intervalle $[64,90]$
2. La fonction calcul le reste de la division euclidienne de $4(m-64)$ par $27$. Soit $s(m)$ ce reste
3. La fonction ajoute 64 à ce reste $s(m)$ et on pose $n=s(n)+64$  
4. La fonction détermine enfin le caractère associé à ce code ASCII : ascii(n)

###### Exemple
- La lettre O qui a un code ASCII égal à 79 sera déchiffré ainsi :
$$4\times(79-64) = 27 x 2 + 6\textrm{ d'où } s(79)=6$$
et ascii(6+64)="F"
- La lettre J qui a un code ASCII égal à 74 sera déchiffré ainsi :
$$4\times(74-64) = 27 x 1 + 13\textrm{ d'où } r(74)=13$$
et ascii(13+64)="M"

#### Compléments sur la méthode utilisée :
Une fois la fonction de chiffrement choisie, on obtient une valeur $m$ à partir de celle de $n$. Pour pouvoir déchiffrer, il faut être capable de retrouver la valeur de $n$ à partir de celle de $m$.
###### Méthode pour obtenir la valeur de $n$ à partir de la valeur de $m$
$r(n)$ est le reste de la division euclidienne de
$7(n-64)$ par $27$, et $r(n)=m-64$.
On peut donc écrire la relation suivante ;
$$7(n-64)=27k+(m-64)\textrm{ ,}\forall k \mathbb{N}$$
Ou encore :
$$(m-64) = 7(n-64) - 27k$$
On remarque que : $4\times 7 - 27 = 1$ d'où $4\times 7 = 1 + 27$.
On écrit alors :
$$4(m-64) = 4\times 7(n-64) - 4\times 27k$$
$$4(m-64) = (1+27)(n-64)-4\times 27k$$
$$4(m-64) = (n-64) + 27(n-64) -4\times 27k$$
$$4(m-64) = (n-64) + 27(n-64-4k)$$
Lorsque l'on effectue la division euclidienne de $4(m-64)$ par $27$, on obtient le reste $(n-64)$ et donc la valeur de $n$.
Une valeur de $n$ correspond à une valeur de $m$ donnée.


### Algorithme
#### Entrées :
  - Le message à crypter ou à décrypter

#### Sorties :
  - Le message crypté ou décrypté.

#### Résultats :
On effectue les saisie directement dans la console.
1.  cryptage("BONJOUR@JE@SUIS@ICI@POUR@CRYPTER@VOTRE@MESSAGE")
 ans  =

 NXQPXLR@PH@YLIY@IUI@DXLR@URMDEHR@SXERH@JHYYGVH

2. cryptage("LA@CRYPTOGRAPHIE@C@EST@GENIAL")
 ans  =

 CG@URMDEXVRGDBIH@U@HYE@VHQIGC
3. decryptage("SXLY@GSHT@RHLYYI@G@ERXLSHR@CG@OXQUEIXQ@AH@AHURMDEGVH@NRGSX")
 ans  =

 VOUS@AVEZ@REUSSI@A@TROUVER@LA@FONCTION@DE@DECRYPTAGE@BRAVO
4. decryptage("SXLY@DXLSHT@JGIQEHQGQE@URMDEHR@EXLY@CHY@JHYYGVHY@AH@SXERH@UBXIF")
 ans  =

 VOUS@POUVEZ@MAINTENANT@CRYPTER@TOUS@LES@MESSAGES@DE@VOTRE@CHOIX
