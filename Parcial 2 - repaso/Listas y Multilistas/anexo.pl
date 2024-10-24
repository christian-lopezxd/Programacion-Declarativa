% Consulta: longitud([1,2,3,4],N).

longitud([],0):-!.

longitud([_|Cola],N):-
    longitud(Cola,N1),
    is(N,+(N1,1)).

% Consulta: sumatoria([13,5,45,78],S).

sumatoria([],0):-!.
sumatoria([Head|Cola],S):-
    sumatoria(Cola,S1),
    is(S,+(S1,Head)).

% Consulta: unir([1,2,3,4],[13,5,45,78],L).
%  (No une en orden de aparaci�n)

unir([],L2,L2):-!.
unir([H1|T1],L2,L):-
    unir(T1,[H1|L2],L).

% Consulta: invertir([13,5,45,78],I).

invertir(L,I):-
    invertirAux(L,[],I).
invertirAux([],L2,L2):-!.
invertirAux([H1|T1],L2,I):-
    invertirAux(T1,[H1|L2],I).

% Consulta: unir([1,2,3,4],[13,5,45,78],L).

concatenar(L1,L2,L):-
    invertir(L1,LR),
    unir(LR,L2,L).

% Consulta: zip([1,2,3,4],[13,5,45,78],L).

zip(L1,L2,L):-
    longitud(L1,N1),
    longitud(L2,N2),
    =:=(N1,N2),
    zipAux(L1,L2,[],R),
    invertir(R,L).
zipAux([],[],L3,L3):-!.
zipAux([H1|T1],[H2|T2],L3,L):-
    =(H3, [H1,H2|[]]),
    zipAux(T1,T2,[H3|L3],L)