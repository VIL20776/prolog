% http://www.cs.us.es/~jalonso/publicaciones/2006-int_prolog.pdf
% Ejemplo 3

divide(2,6). % Hecho 1
divide(2,4). % Hecho 2
divide(2,12). % Hecho 3
divide(3,6). % Hecho 4
divide(3,12). % Hecho 5
divide(6,X):- divide(2,X), divide(3,X). % Regla 1
