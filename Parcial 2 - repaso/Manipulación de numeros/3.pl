%Hacer un predicado que establezca la relación entre dos enteros N y M, y un
%entero MCM que es el Mínimo Común Múltiplo de N y M.

mcm(N, M, X):- 
    mcd(N, M, Y), 
    is(X, N * M / Y).

% ?- mcm(12, 18, X).
