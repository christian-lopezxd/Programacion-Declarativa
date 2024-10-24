%Hacer un predicado que establezca la relación entre una lista y el último
%elemento contenido en ella

% Predicado principal: inicializa la búsqueda del último elemento

ultimo_elemento([X], X) :- !.

% Caso recursivo: si hay al menos dos elementos, probamos con el siguiente

ultimo_elemento([_ | T], X) :-
    ultimo_elemento(T, X).

% Consultas de ejemplo:
% ?- ultimo_elemento([1, 2, 3, 4, 5], X).