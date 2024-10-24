%Hacer un predicado que establezca la relación entre una lista, y otra que
%tiene los mismos elementos pero todos duplicados.

% Predicado principal: inicializa la búsqueda de la lista duplicada
duplicar_lista([], []).

% Caso recursivo: si hay al menos un elemento, duplicamos el primero
duplicar_lista([H | T], [H, H | X]) :-
    duplicar_lista(T, X).

% Consultas de ejemplo:
% ?- duplicar_lista([1, 2, 3, 4, 5], X).