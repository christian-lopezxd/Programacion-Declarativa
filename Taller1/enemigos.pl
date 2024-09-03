%enemigos

enemigo(rusia, ucrania).
enemigo(ucrania, rusa).
enemigo(japon, usa).
enemigo(usa, japon).
enemigo(el_salvador, honduras).
enemigo(honduras, el_salvador).
enemigo(vietnam, china).
enemigo(china, ucrania).

%reglas

aliado(Atacante, Enemigo, Aliado):-
    enemigo(Atacante, Enemigo),
    enemigo(Enemigo, Atacante),
    enemigo(Aliado, Enemigo),
    \==(Aliado, Atacante),
    \==(Aliado, Enemigo)
    \==(Atacante, Enemigo).