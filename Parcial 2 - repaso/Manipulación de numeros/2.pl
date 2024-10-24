%Hacer un predicado que establezca la relación entre dos enteros N y M, y un
%entero MCD que es el Máximo Común Divisor de N y M.

mcd(N, 0, N):- !.

mcd(N, M, X):- 
    is(M1, N mod M),
    mcd(M, M1, X).

% ?- mcd(12, 18, X).    