%Hacer un predicado que establezca la relación entre una lista de enteros y
%una lista de operadores aritméticos que si se colocan entre los enteros de la
%primera lista se generaría una ecuación válida. Ejemplo: las listas
%[2,3,5,7,11] y [‘-’,’+’,’+’,’=’] estarían en una relación válida.

% Predicado principal: inicializa la búsqueda de operadores
operadores_ecuacion([], []) :- !.

% Caso base: si llegamos al final de la lista, terminamos
operadores_ecuacion([_], []) :- !.

% Caso recursivo: si hay al menos dos elementos, agregamos un operador

operadores_ecuacion([_, _ | T], [_, O | X]) :-
    member(O, ['+', '-', '*', '/']),
    operadores_ecuacion(T, X).  

% Consultas de ejemplo:
% ?- operadores_ecuacion([2, 3, 5, 7, 11], X).

