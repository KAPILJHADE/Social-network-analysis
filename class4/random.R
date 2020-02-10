library(igraph)
G = make_empty_graph(n=7)
G=graph(c(1,2,2,3,3,4,4,5,5,6,6,7,7,1,1,3,2,4,3,5,4,6,5,7,6,1,7,2),directed = F)
plot(G)