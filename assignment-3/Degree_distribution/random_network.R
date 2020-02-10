library(igraph)
#random graph of fb 
Rfb = erdos.renyi.game(4039,0.0108)
t = table(degree(Rfb))
plot(t / sum(t),xlab="Degree", ylab="Frequency")