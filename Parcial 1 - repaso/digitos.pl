% Caso base: cuando el número es menor que 10, la suma es el mismo número
suma_digitos(N, N) :- N < 10, !.
% suma_digitos(N, Suma) :- N < 10, Suma is N, !.

% Caso recursivo
suma_digitos(N, Suma) :-
    N >= 10,
    is(UltimoDigito, mod(N, 10)),
    is(RestoNumero, div(N, 10)),
    suma_digitos(RestoNumero, SumaParcial),
    is(Suma, +(SumaParcial, UltimoDigito)).
    

    