%Arboles sld

futbol(alberto).
futbol(boris).
titular(boris).

%Cláusulas

equipo_futbol(X,Y):-futbol(Y),equipo(X,Y).

%Operador de corte
equipo(X,Y):-futbol(X),!,futbol(Y).

equipo(X,boris):-futbol(X),titular(X).