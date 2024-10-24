%regla que multiplica cada elemento de la lista por un numero n

multiplicar([],_,[]).

multiplicar([H | T], N, [R | Y]):-
    is(R, *(H,N)),
    multiplicar(T,N,Y).


