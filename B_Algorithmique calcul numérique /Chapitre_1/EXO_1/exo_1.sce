// # Résolution d'une grille de sudoku (9x9)
printf("%s\n","## Résolution d''une grille de sudoku (9x9)")
// -------------------------------------------------------------------
funcprot(0);
// -------------------------------------------------------------------
// Déclaration des fonctions
// -------------------------------------------------------------------
//Placement d'un chiffre dans une case 
// -------------------------------------------------------------------
// Fonction Possible_Case(k,n)
// k = num de la case
// n = chiffre à tester
// z = {0,1}

// -------------------------------------------------------------------
function z = Poss_Case(k,n)
    printf("%s%i%s%i\n" , "Cases possibles pour la case k = ", k," ->  Chiffre à tester ", n)
    r = modulo(k,9);
    b = int(k/9);
    
    if (r==0) then
        c = 9;
        l = b;
        else
        c = r;
        l = b + 1;
        
    end
    // Traitement par colonne
    for p = c:9:c+72
        //Pas de 9
        if (matsudoku(1,p)== n) then
            z = 0;
            return;
        end    
    end
    // Traitement par ligne 
    q = 9*(l-1)+1;
    for s=q:1:q+8
        //Pas de 1
        if (matsudoku(1,s)== n) then
            z = 0;
            return;
        end
    end
    // Traitement par bloc
    t = int(k/27);
    f = modulo(k,27);
    if (f == 0) then
        lb = t - 1;
    else
        lb = t;
    end     
    v = modulo(c,3);
    w = int(c/3);
    
    if (v == 0) then
        cb = w - 1;
    else
        cb = w;
    end
    // N° de la case du N°1 du bloc
    numb = 3*cb + 1 + 27*lb;
    
    for (j = 0:1:2)
        // ¨Par pas de 1
        for (e = 0:1:2)
            i = numb + 9*j+e; 
            if (matsudoku(1,i)==n) then
                z = 0;
                return;    
            end               
        end
    end
    z = n;
    return;
endfunction
// -------------------------------------------------------------------
// Délacement dans la grille
// -------------------------------------------------------------------
// Fonction Recule_Case(k)
// k = num de la case
// y = le num de la case précédente initialement vierge
// -------------------------------------------------------------------
function y = Rec_Case(k)
    printf("%s%i","# Recule case ", k)
    temp = k - 1;
    while (initsudo(1,temp)<>0)
        temp = temp - 1;
    end
    y = temp;
    printf("%s%i\n"," -> ",y)
endfunction
// -------------------------------------------------------------------
// Fonction Avance_Case(k)
// k = num de la case
// x = le num de la case  vierge suivante
// -------------------------------------------------------------------
function x = Av_Case(k)
    printf("%s%i","# Avance case ",k)
    if (k==81) then
        x = 82;
        return;
    end
    temp = k + 1;
    while (initsudo(1,temp)<>0)
        temp = temp + 1;
    end
    x = temp;
    printf("%s%i\n"," -> ",x)
endfunction
// -------------------------------------------------------------------
// Fonction Aff_Grille()
// -------------------------------------------------------------------
function Aff_Grille()
    global matsolution
    for (i = 1:1:9)   

        for (j=1:1:9)
            matsolution(i,j) = matsudoku(1,(i-1)*9+j);
        end 
    end
    disp(matsolution);
endfunction
// -------------------------------------------------------------------
// Programme principal
// -------------------------------------------------------------------
// Déclenchement du chronomètre
timer();
// -------------------------------------------------------------------
// Saisie des données
global matsolution
mymat = zeros(9,9);
matsudoku = zeros(1,81);
initsudo = zeros(1,81);
// -------------------------------------------------------------------
matinit = evstr(x_matrix('Entrez la grille de Sudoku (0 pour les cases vides',mymat));
for (i=1:1:9)
    for(j=1:1:9)
        matsudoku(1,(i-1)*9+j) = matinit(i,j);
    end
end
initsudo = matsudoku;
// -------------------------------------------------------------------
// Résolution
// -------------------------------------------------------------------
nsudo = Av_Case(0);
firstn  = nsudo;
while(nsudo < 82)
    printf("%s%i\n","nsudo = ", nsudo)
    valeurn = matsudoku(1,nsudo);
    if (valeurn < 9) then 
        sn = 0;
        for(test = (valeurn+1):1:9)
            rn = Poss_Case(nsudo,test);
            if (rn<>0) then
                matsudoku(1,nsudo) = rn;
                printf("%s%i%s%i\n","Chiffre choisi en position = ",nsudo," => " ,rn)
                sn = 1;
                nsudo = Av_Case(nsudo);
                break;    
            end
        end
        if (sn == 0) then
            matsudoku(1,nsudo) = 0;
            nsudo = Rec_Case(nsudo);        
        end
    elseif nsudo == firstn then
        break;
    else
        matsudoku(1,nsudo) = 0;
        nsudo = Rec_Case(nsudo);
    end   
    Aff_Grille(); 
    printf("%s\n","**********************************")
     
end
printf("\n")
printf("%s\n","**********************************")
printf("%s\n","**********************************")
printf("%s\n","**********************************")
printf("%s\n","**********************************")
// -------------------------------------------------------------------
if (nsudo <> firstn) then
    printf("%s\n","Résolution d''une grille de SUDOKU. Grille Initiale :");
    disp(matinit);
    printf("%s\n","Solution trouvée : ");
    Aff_Grille();
    printf("%s%0.3f%s","Temps d''exécution : ",timer(), " secondes.");
else
    printf("%s\n","Aucune solution trouvée !")
end


/*

[0, 8, 0, 1, 0, 7, 0, 6, 0
 0, 0, 4, 0, 0, 0, 1, 0, 0
 0, 5, 0, 6, 0, 9, 0, 2, 0
 0, 1, 3, 0, 0, 0, 2, 4, 0
 2, 0, 0, 0, 0, 0, 0, 0, 6
 0, 7, 5, 0, 0, 0, 3, 1, 0
 0, 9, 0, 8, 0, 5, 0, 3, 0
 0, 0, 1, 0, 0, 0, 7, 0, 0
 0, 3, 0, 4, 0, 2, 0, 9, 0]



*/
