%Dado el intervalo de enteros [A,B], escribir los datos del intervalo.
%en pantalla, uno por linea.

colocar(A,B):- =:=(A,B),write(A),!.
colocar(A,B):- write(A), is(X,+(A,1)),colocar(X,B).


%Dado el intervalo de enteros [A,B], hacer la sumatoria de todos los dartos del intervalo.

%suamtoria(3,8,R).

%Opcion 1
sumatoria(A,B,R):- =:=(A,B),is(R,A),!.
sumatoria(A,B,R):- is(X,+(A,1)),sumatoria(X,B,R1),is(R,+(A,R1)).

%Opcion 2

sumatoria2(A,A,A):- !.
sumatoria2(A,B,R):- is(X,+(A,1)),sumatoria(X,B,R1),is(R,+(A,R1)).

%Se requiere un clausula que provea el n-esimo termino de la serie de Fibonacci.

%Opcion 1

fibonacci(0,1):- !.
fibonacci(1,1):- !.

fibonacci(N,R):- 
    is(N1,-(N,1)),
    is(N2,-(N,2)),
    fibonacci(N1,R1),
    fibonacci(N2,R2),is(R,+(R1,R2)).

%Opcion 2

fibonacci2(0,1):- !.
fibonacci2(1,1):- !.

fibonacci2(N,V):-
    is(X,-(N,1)),
    fibonacci2(X,V1),
    is(Y,-(N,2)),
    fibonacci2(Y,V2),
    is(V,+(V1,V2)).


%Dado un intervalo de enteros [A,B], contar cuantos datos hat en el intervalo.

%contar(3,8,R).

contar(A,A,1):- !.

contar(A,B,C):- is(X,+(A,1)),contar(X,B,C1),is(C,+(C1,1)).





