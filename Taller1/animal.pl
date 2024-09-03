%mamifero
tiene_pelo(perro).
tiene_pelo(gato).
tiene_pelo(leon).
da_leche(perro).
da_leche(gato).
da_leche(leon).

%aves

vuela(aguila).
vuela(perico).
pone_huevo(aguila).
pone_huevo(perico).

%peces

tiene_escamas(tiburon).
tiene_escamas(salmon).
tiene_escamas(tilapia).

nada(tiburon).
nada(salmon).
nada(tilapia).

pone_huevo(tiburon).
pone_huevo(salmon).
pone_huevo(tilapia).

%Reptiles

tienen_escamas(iguana).
tienen_escamas(serpiente).

pone_huevo(iguana).
pone_huevo(serpiente).


%clasificación

es_mamifero(X):- 
    tiene_pelo(X),da_leche(X).

es_ave(X):-
    vuela(X),pone_huevo(X).

es_pez(X):-
    tiene_escamas(X),nada(X),pone_huevo(X).

es_reptil(X):-
    tiene_escamas(X),pone_huevo(X).
