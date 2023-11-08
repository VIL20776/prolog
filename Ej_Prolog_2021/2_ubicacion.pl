% https://www.cp.eng.chula.ac.th/~vishnu/ProgLang/prolog_01/Prolog,%20an%20introduction.pdf
% Ejemplo 2
located_in(atlanta,georgia). % Hecho 1
located_in(houston,texas). % Hecho 2
located_in(austin,texas). % Hecho 3
located_in(toronto,ontario). % Hecho 4

located_in(X,usa):- located_in(X,georgia). % Regla 1
located_in(X,usa):- located_in(X,texas). % Regla 2
located_in(X,canada):- located_in(X,ontario). % Regla 3
located_in(X,north_america):- located_in(X,usa). % Regla 4
located_in(X,north_america):- located_in(X,canada). % Regla 5
