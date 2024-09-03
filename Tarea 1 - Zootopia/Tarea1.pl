% Hechos de personajes
personaje(judy_hopps).
personaje(nick_wilde).
personaje(chief_bogo).
personaje(bellwether).
personaje(mayor_lionheart).
personaje(flash).
personaje(mr_big).
personaje(finnick).

% Hechos de especies
especie(judy_hopps, conejo).
especie(nick_wilde, zorro).
especie(chief_bogo, bufalo).
especie(bellwether, oveja).
especie(mayor_lionheart, leon).
especie(flash, perezoso).
especie(mr_big, musaraña).
especie(finnick, zorro).

% Hechos de roles
rol(judy_hopps, policia).
rol(nick_wilde, estafador).
rol(chief_bogo, jefe_policia).
rol(bellwether, asistente).
rol(mayor_lionheart, alcalde).
rol(flash, empleado_dmv).
rol(mr_big, jefe_mafia).
rol(finnick, complice).

% Hechos de relaciones
amigo(judy_hopps, nick_wilde).
amigo(nick_wilde, finnick).
enemigo(judy_hopps, bellwether).
jefe(chief_bogo, judy_hopps).
jefe(mayor_lionheart, chief_bogo).



% Reglas

son_amigos(X, Y) :- amigo(X, Y).
son_amigos(X, Y) :- amigo(Y, X).

es_jefe(X) :- jefe(X, _).

es_subordinado(X) :- jefe(_, X).

es_depredador(X) :- especie(X, leon); especie(X, zorro); especie(X, bufalo).

es_presa(X) :- especie(X, conejo); especie(X, oveja); especie(X, musaraña).

trabaja_en_policia(X) :- rol(X, policia); rol(X, jefe_policia).

companeros_trabajo(X, Y) :- trabaja_en_policia(X), trabaja_en_policia(Y), X \= Y.

depredador_policia(X) :- es_depredador(X), trabaja_en_policia(X).

son_enemigos(X, Y) :- enemigo(X, Y).
son_enemigos(X, Y) :- enemigo(Y, X).

es_estafador(X) :- rol(X, estafador).
es_complice(X) :- rol(X, complice).

empleado_dmv(X) :- rol(X, empleado_dmv).

es_lider(X) :- rol(X, jefe_policia); rol(X, alcalde); rol(X, jefe_mafia).

es_herbivoro(X) :- especie(X, conejo); especie(X, oveja); especie(X, musaraña).

es_alcalde(X) :- rol(X, alcalde).

rol_autoridad(X) :- es_lider(X).

aliado_mafia(X) :- amigo(X, mr_big).

es_carnivoro(X) :- especie(X, leon); especie(X, zorro).

presa_policia(X) :- es_presa(X), trabaja_en_policia(X).

mismo_rol(X, Y) :- rol(X, R), rol(Y, R), X \= Y.

misma_especie(X, Y) :- especie(X, S), especie(Y, S), X \= Y.
