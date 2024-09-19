% Base de conocimientos
hombre(daniel).
hombre(sebastian).
hombre(rafael).
hombre(miguel).
hombre(alfredo).
hombre(aaron).

mujer(lorna).
mujer(korina). 
mujer(sofia).
mujer(elena).

papa(daniel,sebastian).
papa(daniel,korina).
papa(daniel,miguel).
papa(sebastian,sofia).
papa(sebastian,alfredo).
papa(rafael,aaron).

mama(lorna,sebastian).
mama(lorna,korina).
mama(lorna,miguel).
mama(elena,sofia).
mama(elena,alfredo).
mama(korina,aaron).

%Clausulas de Horn

abuelo(X,Y):-papa(X,Z),papa(Z,Y).
abuelo(X,Y):- papa(X,Z),mama(Z,Y).

abuela(X,Y):-mama(X,Z),mama(Z,Y).
abuela(X,Y):-mama(X,Z),papa(Z,Y).

sibling(X,Y):-papa(Z,X),papa(Z,Y),mama(L,X),mama(L,Y), X \== Y.

%sibling(X,Y):-mama(Z,X),mama(Z,Y). X \== Y.

half_sibling(X,Y):-papa(Z,X),papa(Z,Y), X \== Y.
half_sibling(X,Y):-mama(Z,X),mama(Z,Y), X \== Y.

%Hermana
hermana(X,Y):-mujer(X), papa(F,Y), papa(F,X), mama(M,Y), mama(M,X), \==(X,Y).
%Hermano
hermano(X,Y):-hombre(X), papa(F,Y), papa(F,X), mama(M,Y), mama(M,X), \==(X,Y).

%Tia
tia(X,Y):-papa(F,Y),hermana(X,F).
tia(X,Y):-mama(M,Y),hermana(X,M).

%Tio
tio(X,Y):-papa(F,Y),hermano(X,F).
tio(X,Y):-mama(M,Y),hermano(X,M).

%Padres
padres(X,Y):-papa(X,C), mama(Y,C).
padres(X,Y):-mama(X,C), papa(Y,C).

%Cuñado
cunyado(X,Y):-hombre(X),padres(X,Z),sibling(Z,Y).
%Cuñada
cunyada(X,Y):-mujer(X),padres(X,Z),sibling(Z,Y).


%Sobrino
sobrino(X,Y):-hombre(X),tio(Y,X).
sobrino(X,Y):-hombre(X),tia(Y,X).

%Segunda opcion
%sobrino(X,Y):-hombre(X),papa(Z,X),siblings(Z,Y).
%sobrino(X,Y):-hombre(X),mama(Z,X),siblings(Z,Y).


%Sobrina
sobrina(X,Y):-mujer(X),tio(Y,X).
sobrina(X,Y):-mujer(X),tia(Y,X).

%Segunda opcion
%sobrina(X,Y):-mujer(X),papa(Z,X),siblings(Z,Y).
%sobrina(X,Y):-mujer(X),mama(Z,X),siblings(Z,Y).


%Suegro
suegro(X,Y):-padres(Z,Y),papa(X,Z).

%Suegra
suegra(X,Y):-padres(Z,Y),mama(X,Z).


%Bisabuelo
bisabuelo(X,Y):-papa(X,Z),abuelo(Z,Y).
bisabuelo(X,Y):-papa(X,Z),abuela(Z,Y).

%Bisabuela
bisabuela(X,Y):-mama(X,Z),abuelo(Z,Y).
bisabuela(X,Y):-mama(X,Z),abuela(Z,Y).


