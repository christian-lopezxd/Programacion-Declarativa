%Hacer un predicado que establezca la relación entre dos enteros N y M, y una
%lista que contiene todos los números primos entre N y M.

% Predicado principal: inicializa la búsqueda de números primos
primos_entre(N, M, X) :-
    N =< M,
    primos_entre(N, M, [], X).

% Caso base: si N llega a M, terminamos y devolvemos la lista
primos_entre(N, M, X, X) :-
    N =:= M, !.

% Caso recursivo: si N es primo, lo agregamos a la lista
primos_entre(N, M, Acc, X) :-
    es_primo(N),
    N1 is N + 1,
    primos_entre(N1, M, [N | Acc], X), !.

% Caso recursivo: si N no es primo, probamos con el siguiente número
primos_entre(N, M, Acc, X) :-
    N1 is N + 1,
    primos_entre(N1, M, Acc, X).

% Predicado que verifica si un número es primo
es_primo(N) :-
    N > 1,
    es_primo(N, 2).

% Caso base: si llegamos a la raíz cuadrada de N, es primo
es_primo(N, I) :-
    I * I > N, !.

% Caso recursivo: si I divide a N, no es primo
es_primo(N, I) :-
    N mod I =\= 0,
    I1 is I + 1,
    es_primo(N, I1).

% Consultas de ejemplo:
% ?- primos_entre(1, 10, X).