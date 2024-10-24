%. Hacer un predicado que establezca la relación entre una lista, un número
%entero N, una segunda lista que tiene los primeros N elementos de la primera
%lista, y una tercera lista que tiene el resto de elementos de la primera lista.

% Caso base: Si N es 0, todo lo que queda va a la tercera lista.
separar_n_elementos(L, 0, [], L).

% Caso base: Si la lista está vacía, ambas listas son vacías.
separar_n_elementos([], _, [], []).

% Caso recursivo: Toma el primer elemento y sigue con N-1.
separar_n_elementos([X | Xs], N, [X | Ys], Zs) :-
    N > 0,
    N1 is N - 1,
    separar_n_elementos(Xs, N1, Ys, Zs).
