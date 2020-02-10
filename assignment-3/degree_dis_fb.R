library(igraph)
G2=read_graph("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class4/Friendship-network_data_2013.csv",format="edgelist",directed=F)
x= transitivity(G2, type = c("undirected", "global", "globalundirected",
                             "localundirected", "local", "average", "localaverage",
                             "localaverageundirected", "barrat", "weighted"), vids = NULL,
                weights = NULL, isolates = c("NaN", "zero"))
#plot(G2)
x= transitivity(G2)
x
t = table(degree(G2))
plot(t ,xlim=c(0,26), ylim=c(0, 30), xlab="Degree", ylab="Frequency")
