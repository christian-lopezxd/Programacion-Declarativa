%Hacer un predicado que establezca la relación entre una lista, un número
%entero N, y otra lista con los datos de la primera excepto el que está en la
%posición N.

%caso base lista vacía

todos_menos([],_,[]):-!.

%caso recursivo el numero no es el indicado

todos_menos([H|T], N, [H|Y]):-
    N>1,
    N1 is N - 1,
    todos_menos(T, N1, Y).

%caso de paro el indice llega a uno lo ignoramos 

todos_menos([_|T], 1, T).


