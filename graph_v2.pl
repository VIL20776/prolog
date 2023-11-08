% Definir el grafo
grafo([a, b, c, d], [(a, b), (a, c), (a, d), (c, d)]).

% Definir el predicado para verificar si hay un camino entre dos vértices
camino(X, Y, [X, Y]) :- grafo(_, Aristas), member((X, Y), Aristas).
camino(X, Y, [X | CaminoRestante]) :-
    grafo(_, Aristas),
    member((X, Z), Aristas),
    camino(Z, Y, CaminoRestante).

% Definir el predicado para buscar todos los caminos posibles entre dos vértices
todos_los_caminos(X, Y, Caminos) :-
    findall(Camino, camino(X, Y, Camino), Caminos).

% Consulta para encontrar todos los caminos entre 'a' y 'd'
% todos_los_caminos(a, d, Caminos).