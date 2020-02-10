library(igraph)
prob_graph = make_empty_graph(100)
prob_graph = prob_graph + edges(c(1,2,1,3,2,3))
#plot (prob_graph, vertex.color = "green", edge.color = "blue", edge.arrow.size = 0.1, layout = layout_with_kk, rescale=FALSE, xlim=c(-5,5), ylim=c(-3,5), vertex.size=50)
degseq=igraph::degree(prob_graph)
degseq
sum=0
for(i in degseq)
{
  sum=sum+i
}
sum
degseq=degseq/sum
degseq
for(i in 4:(100))
{
  r=runif(1)
  if(r>=0 && r<2/6)
  {
    prob_graph = prob_graph + edges(c(1,i))
  }
  if(r>=2/6 && r<3/6)
  {
    prob_graph = prob_graph + edges(c(1,i))
  }
  if(r>=3/6 && r<6/6)
  {
    prob_graph = prob_graph + edges(c(1,i))
  }
}

plot (prob_graph, vertex.color = "green", edge.color = "blue", edge.arrow.size = 0.1, layout = layout_with_kk, rescale=FALSE, xlim=c(-5,5), ylim=c(-3,5), vertex.size=50)

