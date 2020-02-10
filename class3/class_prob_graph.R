library(igraph)
make_random <-function(num,prob)
{
  G = make_empty_graph(n=num)
  for(i in 1:(num-1))
  {
    for(j in (i+1):num)
    {
      r=runif(1)
      if(r<=prob){
        G=G+edge(i,j)
    }
    }
  }
return (G)
}
G=make_random(20,0.5)
plot(G)

t = table(degree(G))
plot(t / sum(t), xlim=c(0,100), ylim=c(0, 0.8), xlab="Degree", ylab="Frequency")
