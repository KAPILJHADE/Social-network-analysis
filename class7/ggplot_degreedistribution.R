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
  G=make_random(100,0.1)
  #plot(G)
  #t = table(degree(G))
  library(ggplot2)
  d=degree(G)
  d.degree.histogram <- as.data.frame(table(d))
  ggplot(d.degree.histogram,aes(x=d,y=Freq,color="red"))+geom_point()
  
  