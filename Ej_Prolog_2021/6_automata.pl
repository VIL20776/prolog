% http://www.lcc.uma.es/~lopez/progdec/prolog/apuntes/06-grafos/grafos.pdf
% Automata a1
% a1=({qa,qb,qc},{0,1,2},qa,transicion,{qb})
estado_inicial(a1,qa).

estado_aceptacion(a1,qb).

transicion(a1,qa,0,qa).
transicion(a1,qa,2,qc).
transicion(a1,qa,1,qb).
transicion(a1,qb,0,qb).
transicion(a1,qb,1,qc).
transicion(a1,qb,2,qa).
transicion(a1,qc,0,qc).
transicion(a1,qc,1,qa).
transicion(a1,qc,2,qb).

recorre(A,Q,[C|Resto]):-
	transicion(A,Q,C,QN),
	recorre(A,QN,Resto).

recorre(A,Q,[]) :-
	estado_aceptacion(A,Q).


automata(A,Cadena):-
	estado_inicial(A,Q0),
	recorre(A,Q0,Cadena),
	write_ln('cadena aceptada').