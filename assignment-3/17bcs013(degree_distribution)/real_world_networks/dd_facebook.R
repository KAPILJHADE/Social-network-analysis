library(igraph)
G2=read_graph("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/assignment-3/fb1.txt",format="edgelist",directed=F)

t = table(degree(G2))
plot(t , xlab="Degree", ylab="Frequency")