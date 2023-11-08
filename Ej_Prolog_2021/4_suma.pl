% http://www.cs.us.es/~jalonso/publicaciones/2006-int_prolog.pdf
% Ejemplo 4

suma(0,Y,Y). % Regla 1
suma(s(X),Y,s(Z)):- suma(X,Y,Z). % Regla 2