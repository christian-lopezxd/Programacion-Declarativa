%Hacer un predicado que establezca la relación entre una lista y el penúltimo
%elemento contenido en ella.


penultimo_elemento([X,_],X).
penultimo_elemento([_|T],X) :- penultimo_elemento(T,X).