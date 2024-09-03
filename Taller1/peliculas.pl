%Peliculas

pelicula(chucky, miedo).
pelicula(la_monja, miedo).
pelicula(anabelle, miedo).

pelicula(rey_leon, animacion).
pelicula(mulan, animacion).
pelicula(cenicienta, animacion).


pelicula(rambo, accion).
pelicula(duro_de_matar, accion).
pelicula(fast_and_furious, accion).

%Gustos

gusta(christian, animacion).
gusta(christian, miedo).
gusta(carlos, miedo).
gusta(federico, accion).

%vistos
visto(christian, la_monja).

recomendar_pelicula(Usuario, Pelicula):-
    gusta(Usuario, Genero),
    pelicula(Pelicula, Genero),
    not(visto(Usuario,Pelicula)).