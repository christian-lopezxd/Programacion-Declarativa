%recursion

suma_digitos(N, Suma) :-
    N < 10,
    Suma is N, !.

suma_digitos(N, Suma) :-    
   N>=10,
   is(UltimoDigito, mod(N, 10)),
   is(RestoNumero, div(N, 10)),
    suma_digitos(RestoNumero, SumaParcial),
    is(Suma, SumaParcial + UltimoDigito).