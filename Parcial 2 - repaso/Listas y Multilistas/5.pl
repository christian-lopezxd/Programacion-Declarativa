%Hacer un predicado que establezca la relación entre una lista y otra que tiene
%los mismos elementos, pero en reversa.

% Predicado principal: inicializa la búsqueda de la lista invertida
invertir_lista([], []).

% Caso recursivo: si hay al menos un elemento, invertimos el resto de la lista
invertir_lista([H | T], X) :-
    invertir_lista(T, Y),
    append(Y, [H], X).

% Consultas de ejemplo: 
% ?- invertir_lista([1, 2, 3, 4, 5], X).