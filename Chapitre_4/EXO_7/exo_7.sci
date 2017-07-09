// # Cryptographie symétrique ou à clé secrète
//-------------------------------------------------------
// Cette fois ci, on a juste à définir deux fonction que l'on utilisera dans la console

function s = cryptage(mes)
    ini = strsplit(mes,[1:length(mes)-1]);
    ascini = ascii(ini);
    rest = modulo(7*(ascini-64),27);
    s = strcat(ascii(rest+64));
endfunction

function c = decryptage(cryp)
    ini = strsplit(cryp,[1:length(cryp)-1]);
    ascini = ascii(ini);
    rest = modulo(4*(ascini-64),27);
    c = strcat(ascii(rest+64));
endfunction
