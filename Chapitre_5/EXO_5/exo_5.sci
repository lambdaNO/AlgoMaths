// # Section plane de surface
printf("%s\n","##Section plane de surface d''équation z = f(x,y).")
//-------------------------------------------------------
printf("%s\n","Définition de la surface")
fonc = input("Saisir l''expression de la fonction f(x,y). z = ","string");
born = input("Saisir les bornes de l''intervalle : [a,b] = ");
p = input("Saisir le nombre de points à considérer : p = ");
//-------------------------------------------------------
printf("%s\n","Définition du plan de section : y = d ")
plan = input("Saisir l''expression du plan de section d = ","string");
//-------------------------------------------------------
a = born(1);
b = born(2);

deff('z=f(x,y)',"z="+fonc)

x = linspace(a,b,p);
y = ones(x)*d;

//-------------------------------------------------------
// Affichage de la surface :
scf();
xset('colormap',hotcolormap(128))
fplot3d1(x,x,f)

//-------------------------------------------------------
// Affichage de la section de surface
scf();
fplot3d1(x,y,f)


//y = ones(x)*d;
//à la ligne    18 du fichier exécuté /private/var/folders/4x/49p4zblx7ys1txhl3n66jfc80000gn/T/SCI_TMP_980_em8cnP/LOAD_INTO_SCILAB-8243086341179390282.sce
//Dimensions ligne/colonne incohérentes.
