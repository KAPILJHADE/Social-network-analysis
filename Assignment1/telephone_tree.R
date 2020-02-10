library(igraph)
telephone_tree = make_empty_graph(101)
telephone_tree = telephone_tree + edges(c(1,5,1,3,1,4))
x = 2
while(x <51)
{
  telephone_tree = telephone_tree + edges(c(x,2*x,x,2*x+1))
  x = x+1
}
telephone_tree <- telephone_tree - 2
plot (telephone_tree, vertex.color = "green", edge.color = "blue", edge.arrow.size = 0.1, layout = layout_with_kk, rescale=FALSE, xlim=c(-5,5), ylim=c(-3,5), vertex.size=50)

