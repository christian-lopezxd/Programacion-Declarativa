factorial(0,1) :- !.
factorial(1,1) :- !. 

factorial(N,X):- is(N1, -(N,1)), factorial(N1,Y), is(X,*(N,Y)).

suma(X,Y,R):- is(R,+(X,Y)).

comparar(X,Y):- is(S, +(X,Y)),write(S),nl.

dividir(X,Y,R):- is(R,//(X,Y)),write(R).

%Ecuaciones

%Primer grado
ecuacion_primer_grado(0,_,_):- !, fail.

ecuacion_primer_grado(A,B,R):- is(R,/(-B,A)).

%Segundo grado
ecuacion_segundo_grado(0,_,_,_,_):- !, fail.

ecuacion_segundo_grado(A,B,C,_,_):- is(D, -( *(B,B), *(4,*(A,C)))), D < 0, !, fail.

ecuacion_segundo_grado(A,B,C,R1,R2):- 
    is(R1,/(+(-B,sqrt(-(*(B,B), *(4,*(A,C))))),*(2,A))),
    is(R2,/(-(-B,sqrt(-(*(B,B), *(4,*(A,C))))),*(2,A))).

