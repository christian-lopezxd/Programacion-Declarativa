%. Hacer un predicado que establezca la relación entre una lista, un número
%entero N, y otra lista que equivale a la primera pero con los datos que estaban
%en cada N posiciones eliminados.

% Predicado principal: elimina los elementos en cada N posiciones.
eliminar_cada_n(L, N, Resultado) :- 
    eliminar_cada_n(L, N, 1, Resultado).

% Caso base: si la lista es vacía, el resultado es una lista vacía.
eliminar_cada_n([], _, _, []).

% Caso 1: Si la posición es divisible por N, ignoramos el elemento.
eliminar_cada_n([_ | T], N, Pos, Resultado) :-
    Pos mod N =:= 0,  % Si Pos es múltiplo de N.
    Pos1 is Pos + 1,  % Aumentamos la posición.
    eliminar_cada_n(T, N, Pos1, Resultado).

% Caso 2: Si la posición no es divisible por N, conservamos el elemento.
eliminar_cada_n([H | T], N, Pos, [H | Resultado]) :-
    Pos mod N =\= 0,  % Si Pos no es múltiplo de N.
    Pos1 is Pos + 1,  % Aumentamos la posición.
    eliminar_cada_n(T, N, Pos1, Resultado).
