%Hacer un predicado que establezca la relación entre una lista, un entero N, y
%el N-ésimo elemento de la lista.

% Predicado principal: inicializa la búsqueda del N-ésimo elemento
n_esimo_elemento([X | _], 1, X) :- !.

% Caso recursivo: si N es mayor que 1, probamos con el siguiente
n_esimo_elemento([_ | T], N, X) :-
    N1 is N - 1,
    n_esimo_elemento(T, N1, X).

% Consultas de ejemplo:
% ?- n_esimo_elemento([1, 2, 3, 4, 5], 3, X).