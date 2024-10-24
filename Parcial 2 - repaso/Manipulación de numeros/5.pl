% Predicado principal: inicializa la búsqueda de factores primos
factores_primos(N, X) :-
    N > 1, 
    factores_primos(N, 2, X).

% Caso base: si N llega a 1, terminamos y devolvemos lista vacía
factores_primos(1, _, []) :- !.

% Caso recursivo: si I divide a N, agregamos I a la lista
factores_primos(N, I, [I | X]) :-
    N mod I =:= 0, 
    N1 is N // I, 
    factores_primos(N1, I, X), !.

% Caso recursivo: si I no divide a N, probamos con el siguiente divisor
factores_primos(N, I, X) :-
    I1 is I + 1, 
    factores_primos(N, I1, X).
