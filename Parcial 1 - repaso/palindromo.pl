% Verificar si un número es palíndromo.
es_palindromo(Numero) :-
    invertir_numero(Numero, NumeroInvertido),
    Numero =:= NumeroInvertido.
    % Predicado para invertir un número.
    invertir_numero(Numero, Invertido) :-
    invertir_numero_aux(Numero, 0, Invertido).
    % Predicado auxiliar para invertir un número.
    invertir_numero_aux(0, Acumulador, Acumulador) :- !.
    % invertir_numero_aux(Numero, Acumulador, Invertido) :- Numero =:= 0,
    is(Invertido, Acumulador), !.
    invertir_numero_aux(Numero, Acumulador, Invertido) :-
    Numero > 0,
    is(Digito, mod(Numero, 10)),
    is(NuevaCantidad, +(Digito, *(Acumulador, 10))),
    is(Numero1, div(Numero, 10)),
    invertir_numero_aux(Numero1, NuevaCantidad, Invertido).