%Hacer un predicado que establezca la relación entre una lista de listas, y una
%lista simple que contenga todos los datos y subdatos de la primera.

% Predicado principal: concatena todas las listas de la lista de listas.
concatenar_listas([], []) :- !.

concatenar_listas([H | T], X) :-
    concatenar_listas(T, Y),
    concatenar_listas_aux(H, Y, X).

concatenar_listas_aux([], X, X).
concatenar_listas_aux([H | T], Y, [H | X]) :-
    concatenar_listas_aux(T, Y, X).


% Consultas de ejemplo: 
% ?- concatenar_listas([[1, 2, 3], [4, 5], [6, 7, 8]], X).