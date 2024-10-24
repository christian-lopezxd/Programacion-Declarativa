% Caso base: Si la lista de sublistas está vacía, ambas listas de salida son vacías.
separar([], [], [], []).

% Caso recursivo: Extrae el primer y segundo elemento de cada sublista.
separar([[X, Y, Z] | T], [X | L1], [Y | L2], [Z | L3]) :-
    separar(T, L1, L2, L3).


unir([],[],[],[]).

unir([X | L1], [Y| L2], [Z|L3], [[X,Y,Z] | R]):-
    unir(L1, L2, L3, R).

