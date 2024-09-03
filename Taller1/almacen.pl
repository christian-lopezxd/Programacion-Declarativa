%productos

%lacteos
producto(queso, lacteos).
producto(leche, lacteos).
producto(crema, lacteos).
producto(queso_crema, lacteos).
producto(queso_fresco, lacteos).
product(queso_badon), lacteos).

%Alcoholes
producto(vodka, alcohol).
producto(ron, alcohol).
producto(tequila, alcohol).
producto(cania_rica, alcohol).
producto(vino_blanco, alcohol).
producto(vino_mi_suegra, alcohol).

%embutidos
producto(chorizo, embutidos).
producto(salchicha, embutidos).
producto(moronga, embutidos).
producto(mortadela, embutidos).
producto(salchicha_pavo, embutidos).


%gustos
gustos(carla,embutidos).


gustos(christian, alcohol).
gustos(christian, embutidos).
gustos(christian, lacteos).

gustos(juan, alcohol).
gustos(juan, lacteos).


%comprados

comprado(christian, ron).
comprado(juan, queso).

%reglas

recomendar(Usuario, Producto):-
    gustos(Usuario, Categoria),
    producto(Producto, Categoria),
    not(comprado(Usuario,Producto)).