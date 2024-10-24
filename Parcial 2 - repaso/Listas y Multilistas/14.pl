%. Hacer un predicado que establezca la relación entre una lista, dos números
%enteros N y M, y una segunda lista que tiene los datos de la primera desde la
%posición N y hasta la posición M.

% Caso base: si la lista está vacía o N > M, la sublista es vacía.
datos_desde([], _, _, []) :- !.
datos_desde(_, N, M, []) :- N > M, !.

% Caso recursivo: si aún no llegamos a la posición N, seguimos descartando elementos.
datos_desde([_ | T], N, M, Y) :-
    N > 1,
    N1 is N - 1,
    M1 is M - 1,  % También ajustamos M en cada paso para mantener la longitud.
    datos_desde(T, N1, M1, Y).

% Caso recursivo: cuando estamos entre N y M, agregamos los elementos a la lista.
datos_desde([H | T], 1, M, [H | Y]) :-
    M > 0,
    M1 is M - 1,
    datos_desde(T, 1, M1, Y).



