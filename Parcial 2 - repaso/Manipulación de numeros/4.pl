%Hacer un predicado que evalúe si dos números N y M son coprimos

%coprimos(N, M):- mcd(N, M, 1).
coprimos(N, M):- N > 0, M > 0, mcd(N, M, 1).

% ?- coprimos(12, 18).