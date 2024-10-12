% Ejercicio: Filtrar listas de longitud impar

% Predicado principal
filtrar_longitud_impar([], []):- !.

filtrar_longitud_impar([Sublista | Resto], [Sublista | RestoFiltrado]):-
    es_impar(Sublista),
    filtrar_longitud_impar(Resto, RestoFiltrado), !.

filtrar_longitud_impar([_ | Resto], RestoFiltrado):-
    filtrar_longitud_impar(Resto, RestoFiltrado).

% Predicado auxiliar que verifica si la longitud de una lista es impar
es_impar(Lista):-
    contar_elementos(Lista, 0, Conteo),
    Conteo mod 2 =\= 0.

% Predicado recursivo para contar el número de elementos en una lista
contar_elementos([], Conteo, Conteo):- !.
contar_elementos([_ | Resto], ConteoActual, ConteoFinal):-
    ConteoNuevo is ConteoActual + 1,
    contar_elementos(Resto, ConteoNuevo, ConteoFinal).

% Ejemplo de ejecución:
% filtrar_longitud_impar([[1, 2], [4, 5, 6], [7, 8, 9]], X).
