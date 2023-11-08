% http://cs.uns.edu.ar/~td/lfya2012/downloads/EXTRAS/prolog/pres.prolog.2012.pdf
no_esta(_,[]).
no_esta(X,[Y|Ys]) :-
	X \== Y,         % compara el valor
	no_esta(X,Ys).  

% grafo no dirigido
% H=({a,b,c,d},{{a,b},{a,d},{b,c},{b,d},{c,c}})
arco(h,a,b).
arco(h,a,d).
arco(h,b,c).
arco(h,b,d).
arco(h,c,c).
arista(G,A,B):-arco(G,A,B).
arista(G,B,A):-arco(G,A,B).

% grafo dirigido
%  G=({a,b,c,d},{(a,b),(a,d),(b,c),(b,d),(c,c)})
arista(g,a,b).
arista(g,a,d).
arista(g,b,c).
arista(g,b,d).
arista(g,c,c).

camino(G,A,B,[A|Nc]):-
        camino(G,A,B,[A],Nc).

%camino(Grafo,vertice_A, vertice_B, Visitados, Camino)
camino(G,A,A,_,[]).
camino(G,A,B,V,[C|Nc]):-
        arista(G,A,C),
	no_esta(C,V),      % evitar los ciclos
	camino(G,C,B,[C|V],Nc).


