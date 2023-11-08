% http://cs.uns.edu.ar/~td/lfya2012/downloads/EXTRAS/prolog/pres.prolog.2012.pdf
no_esta(_,[]).
no_esta(X,[Y|Ys]) :-
	X \== Y,         % compara el valor
	no_esta(X,Ys).  

% grafo dirigido
%  G=({a,b,c,d},{(a,b),(a,c),(a,d),(c,d)})
arista(a,b).
arista(a,c).
arista(a,b).
arista(c,d).

camino(A,B,[A|Nc]):-
        camino(A,B,[A],Nc).

%camino(Grafo,vertice_A, vertice_B, Visitados, Camino)
camino(A,A,_,[]).
camino(A,B,V,[C|Nc]):-
        arista(A,C),
	no_esta(C,V),      % evitar los ciclos
	camino(C,B,[C|V],Nc).
