%juegos disponibles en la tienda
juego_disponible(minecraft).
juego_disponible(solitario).
juego_disponible(god_of_war).
juego_disponible(fifa).
juego_disponible(need_for_speed).
juego_disponible(cod5).

%juegos que tienen ya comprados

tiene(javito, fifa).
tiene(rodri, minecraft).
tiene(pepito, cod5).

%juegos por comprar

comprar_juego(NombreJuego) :-
    juego_disponible(NombreJuego),
    not(tiene(javito, NombreJuego)),
    not(tiene(rodri, NombreJuego)),
    not(tiene(pepito, NombreJuego)).