library(igraph)
n1 <- c()
p <- c()

for(i in 1 : 100 )
{
  G1 = make_empty_graph(i)
  for(j in 1:200)
  {
    prob = j/200
    for(k in 1:(i-1))
    {                       
      for(l in (k+1):i)
      {
        r = runif(1)
        if(r <= prob)
        {
          G1 = G1 + edge(k,l)
        }
      }
    }
    if(is.connected(G1))
    {
      n1 <- c(n1,i)
      p <- c(p,prob)
      break
    }
  }
}
plot(n1, p , xlim =c(0,100) ,ylim=c(0,0.15),type="l")








