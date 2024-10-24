%Hacer un predicado que establezca la relación entre una lista que tiene datos
%que se repiten consecutivamente, y otra que tiene los mismos elementos,
%pero donde todas las secuencias de datos repetidos consecutivos están
%contenidos en sublistas.

% Predicado principal: inicializa la búsqueda de la lista con repetidos consecutivos
consecutivos_a_sublistas([], []).

% Caso recursivo: si hay al menos dos elementos, comparamos el primero con el segundo
consecutivos_a_sublistas([H, H | T], [[H | X] | Y]) :-
    consecutivos_a_sublistas([H | T], [X | Y]).

% Caso recursivo: si hay al menos dos elementos, y no son iguales, agregamos el primero
consecutivos_a_sublistas([H, Y | T], [[H] | X]) :-
    H \= Y,
    consecutivos_a_sublistas([Y | T], X).

% Caso base: si llegamos al final de la lista, terminamos
consecutivos_a_sublistas([X], [[X]]).

% Consultas de ejemplo:
% ?- consecutivos_a_sublistas([1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 5], X).