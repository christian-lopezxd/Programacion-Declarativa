%Hacer un predicado que establezca la relación entre una lista y la cantidad de
%elementos que contiene

cantidad_elementos([],0).

cantidad_elementos([_|T],X) :- cantidad_elementos(T,X1), X is X1 + 1.

% Consultas de ejemplo:
% ?- cantidad_elementos([1, 2, 3, 4, 5], X).