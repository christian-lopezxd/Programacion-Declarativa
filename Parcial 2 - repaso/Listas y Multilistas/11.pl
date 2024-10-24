%Hacer un predicado que establezca la relación entre una lista, un número
%entero N, y otra lista que tiene los mismos elementos de la primera pero con
%cada dato repetido N veces.


repetir2(_,0,[]).


repetir2([],_,[]).

repetir2([X|Xs],N,[X|Ys]):- N1 is N-1, repetir2([X|Xs],N1,Ys).

repetir2([X|Xs],0,Ys):- repetir2(Xs,N,Ys).

%eje: ?- repetir2([1,2,3],3,L).
