% Caso base: Si el árbol es vacío, la suma es 0.
suma_altura([], _, _, 0).

% Caso: Si estamos en la altura deseada, sumamos el valor del nodo.
suma_altura([Valor, _, _], 0, _, Valor) :- !.

% Caso recursivo: Seguimos recorriendo los subárboles.
suma_altura([_, Izquierdo, Derecho], Altura, Actual, Suma) :-
    Altura > Actual,
    NuevaAltura is Actual + 1,
    suma_altura(Izquierdo, Altura, NuevaAltura, SumaIzq),
    suma_altura(Derecho, Altura, NuevaAltura, SumaDer),
    Suma is SumaIzq + SumaDer.
