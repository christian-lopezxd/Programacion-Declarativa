

%ejercicio 1

%caso base

recorrer_lista([]):-!.

recorrer_lista([Elemento | RestoElementos]):-
    write(Elemento), nl,
    recorrer_lista(RestoElementos).
%ejemplo de ejecucion
%recorrer_lista([1, 2, 3, 4, 5]

% Ejercicio 2: Reemplazar elementos en una lista de sublistas

% Caso base
reemplazar(_, _, [], []):- !.

% Caso recursivo
reemplazar(ValorAntiguo, ValorNuevo, [Sublista | OtrasSublistas], [SublistasReemplazadas | OtrasSublistasReemplazadas ]):-
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, Sublista, SublistasReemplazadas),
    reemplazar(ValorAntiguo, ValorNuevo, OtrasSublistas, OtrasSublistasReemplazadas).

% Caso base para la función auxiliar
reemplazar_en_sublista(_, _, [], []):- !.

% Caso recursivo 1: El elemento es el que se debe reemplazar
reemplazar_en_sublista(ValorAntiguo, ValorNuevo, [ValorAntiguo | RestoElementos], [ValorNuevo | RestoElementosReemplazados]):-
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, RestoElementos, RestoElementosReemplazados), !.

% Caso recursivo 2: El elemento no es el que se debe reemplazar
reemplazar_en_sublista(ValorAntiguo, ValorNuevo, [Elemento | RestoElementos], [Elemento | RestoElementosReemplazados]):-
    reemplazar_en_sublista(ValorAntiguo, ValorNuevo, RestoElementos, RestoElementosReemplazados).

% Ejemplo de ejecución
% reemplazar(1, 2, [[1, 2, 3], [4, 5, 6], [7, 8, 9]], X).


% Ejercicio 3: Contar listas pares

contar_listas_pares(ListaDeListas, ConteoTotal):-
    contar_listas_pares(ListaDeListas, 0, ConteoTotal).

% Caso base
contar_listas_pares([], ConteoTemporal, ConteoTemporal):- !.

% Caso recursivo 1 - Todos los elementos de la sublista son pares
contar_listas_pares([Sublista | Resto], ConteoTemporal, ConteoTotal):-
    todos_pares(Sublista),
    ConteoTemporalNuevo is ConteoTemporal + 1,
    contar_listas_pares(Resto, ConteoTemporalNuevo, ConteoTotal), !.

% Caso recursivo 2 - Al menos un elemento de la sublista no es par
contar_listas_pares([_ | Resto], ConteoTemporal, ConteoTotal):-
    contar_listas_pares(Resto, ConteoTemporal, ConteoTotal).

% Función auxiliar - Verifica si todos los elementos de una lista son pares

% Caso base
todos_pares([]):- !.

% Caso recursivo
todos_pares([Elemento | Resto]):-
    Modulo is Elemento mod 2,
    Modulo =:= 0,
    todos_pares(Resto).

% Ejemplo de ejecución
% contar_listas_pares([[2, 4, 6], [1, 2, 3], [4, 6, 8]], X).

%ejercicio 4
%contar la longitud de la lista mas larga de una lista de listas

longitud_lista_mas_larga