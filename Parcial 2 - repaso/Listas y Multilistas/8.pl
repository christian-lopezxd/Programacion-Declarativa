%Hacer un predicado que establezca la relación entre una lista, y otra que tiene
%los datos de la primera, pero sin repetidos consecutivos

% Predicado principal: inicializa la búsqueda de la lista sin repetidos consecutivos
sin_repetidos_consecutivos([], []).

% Caso recursivo: si hay al menos dos elementos, comparamos el primero con el segundo
sin_repetidos_consecutivos([H, H | T], X) :-
    sin_repetidos_consecutivos([H | T], X).

% Caso recursivo: si hay al menos dos elementos, y no son iguales, agregamos el primero
sin_repetidos_consecutivos([H, Y | T], [H | X]) :-
    H \= Y,
    sin_repetidos_consecutivos([Y | T], X).

% Caso base: si llegamos al final de la lista, terminamos
sin_repetidos_consecutivos([X], [X]).



% Consultas de ejemplo:
% ?- sin_repetidos_consecutivos([1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5], X).