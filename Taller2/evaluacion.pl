%Desarrolla un programa en Prolog que reciba un número entero positivo N y
%calcule la suma de todos los números impares comprendidos entre 1 y N. El
%programa debe utilizar recursión para recorrer los números desde 1 hasta N,
%sumando únicamente aquellos que sean impares.
%Ejemplo: Si N = 10, el programa debe calcular la suma de los números 1, 3,
%5, 7 y 9, y devolver el resultado 25.

% Regla para calcular la suma de los números impares entre 1 y N.
suma_impares(N, Sum) :- suma_impares(N, 1, 0, Sum).

% Caso base: si el número actual es mayor que N, se devuelve la suma.
suma_impares(N, N, Sum, Sum) :- !.

% Caso recursivo: si el número actual es impar, se suma a la suma actual.
suma_impares(N, Current, CurrentSum, Sum) :-
    1 is mod(Current, 2),
    is(NewSum, +(CurrentSum, Current)),
    is(NewCurrent, +(Current, 1)),
    suma_impares(N, NewCurrent, NewSum, Sum).

% Caso recursivo: si el número actual es par, se ignora y se pasa al siguiente.
suma_impares(N, Current, CurrentSum, Sum) :-
    is(NewCurrent, +(Current, 1)),
    suma_impares(N, NewCurrent, CurrentSum, Sum).

% Predicado principal para calcular la suma de los números impares.
main :- write("Ingrese un numero entero: "), read(N), suma_impares(N, Sum), write("La suma de los impares entre 1 y "), write(N), write(" es "), writeln(Sum).