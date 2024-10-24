% Caso base: si ambas listas están vacías, la lista intercalada también lo estará.
alternar([], [], []).

% Caso recursivo: alterna entre el primer número y el primer operador.
alternar([N | Ns], [Op | Ops], [N, Op | Resultado]) :-
    alternar(Ns, Ops, Resultado).

% Caso especial: si la lista de números tiene un último elemento sin operador.
alternar([N], [], [N]).
