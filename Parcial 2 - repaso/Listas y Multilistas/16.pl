%Hacer un predicado que establezca la relación entre una lista, un dato D, un
%entero N, y otra lista que tiene los datos de la primera pero adicionalmente
%tiene D en la posición N.

%caso base: la lista está vacía

insertar_en([],_,_,[]):-!.

%caso recursivo: el indice aun no es donde insertar

insertar_en([H|T],D, N, [H|Y]):-
    N>1,
    N1 is N - 1,
    insertar_en(T,D,N1,Y).

%caso de paro: el indice es 1 agregamos el restante

insertar_en([H|T],D, 1, [D,H|T]).