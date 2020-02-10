library(igraph)
G2=read_graph("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class4/Friendship-network_data_2013.csv",format="edgelist",directed=F)
plot(G2)
x= transitivity(G2, type = c("undirected", "global", "globalundirected",
                             "localundirected", "local", "average", "localaverage",
                             "localaverageundirected", "barrat", "weighted"), vids = NULL,
             weights = NULL, isolates = c("NaN", "zero"))

x= transitivity(G2)
x