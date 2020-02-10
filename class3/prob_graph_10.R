library(igraph)
make_random <- function(num,prob){
  
  G1 = make_empty_graph(n=num)
  
  for(i in 1:(num-1))
  {
    for(j in (i+1):10)
    {
      r = runif(1)
      if(r<= prob){
        G1=G1+edge(i,j)
      }
    }
  }
  return (G1)
}
G1 = make_random(10,0.3)
G1
plot(G1)