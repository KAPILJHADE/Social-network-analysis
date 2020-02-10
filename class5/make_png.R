library(igraph)
library(png)
G= make_empty_graph(n=50)
i=1
while(i<=49)
{
  G=G+edge(i,i+1)
  i=i+1
  
  png(paste("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class5",i,".png",sep=""),600,600)
  #p="/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class5",i,".png",sep=""
  
  plot(G,layout=layout.grid)
  dev.off()
}