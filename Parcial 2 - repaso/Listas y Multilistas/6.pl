%Hacer un predicado que establezca la relación entre una lista y un valor
%booleano que indique si la lista es un palíndromo o no.

% Predicado principal: verifica si una lista es un palíndromo.
es_palindromo(Lista, true) :-
    reverse(Lista, Lista), !.  % Si la lista es igual a su reverso, es palíndromo.

es_palindromo(_, false).  % En caso contrario, no es palíndromo.

