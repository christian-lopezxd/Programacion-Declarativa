% EJERCICIO 1 - Calcular la altura de un árbol binario


%caso base un arbol vacío tiene altura cero

altura([],0).

%caso recursivo: 

altura([_, SubArbolIzquierdo, SubArbolDerecho], Altura):-
