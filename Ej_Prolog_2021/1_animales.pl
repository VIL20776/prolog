% http://www.cs.us.es/~jalonso/publicaciones/2006-int_prolog.pdf
% Ejemplo 1
:- set_prolog_flag(unknown, fail). % SWI-Prolog acepte predicados no definidos

es_mamifero. % Hecho 1
tiene_pezunnas. % Hecho 2
tiene_rayas_negras. % Hecho 3

es_cebra :- es_ungulado, tiene_rayas_negras. % Regla 1
es_ungulado :- rumia, es_mamifero. % Regla 2
es_ungulado :- es_mamifero, tiene_pezunnas. % Regla 3
