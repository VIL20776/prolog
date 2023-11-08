import networkx as nx
import matplotlib.pyplot as plt

G = nx.DiGraph(directed=True)
G.add_edges_from(
    [('a','b'),('a','c'),('a','d'),('c','d')]
)

nx.draw_networkx(G, arrows=True)
plt.savefig('./graph.png')
plt.show()
