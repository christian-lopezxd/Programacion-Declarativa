%Hacer un predicado que evalúe si un número N es primo

primo(N):- N > 1, primo(N, 2).

primo(N, I):- I >= N, !.

primo(N, I):- 
    N mod I =\= 0, 
    I1 is I + 1, 
    primo(N, I1).

% ?- primo(7).