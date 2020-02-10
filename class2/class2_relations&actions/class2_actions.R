library(igraph)
actors_df = read.csv("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class3/actors.csv")
relations_df = read.csv("/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class3/relations.csv")
relations_df = relations_df[,c(2,3)]
actors_df = actors_df[,c(2,3,4)]
g = graph_from_data_frame(relations_df,directed=TRUE,vertices=actors_df)
plot(g)
edf= as_data_frame(g, what="edges")
vdf = as_data_frame(g, what="vertices")
write.csv(edf,"/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class2/class2_relations&actions/edges.csv")
write.csv(vdf,"/home/kapil/desktop/study material notes/6TH SEM/Social Network Analysis/lab/class2/class2_relations&actions/vertices.csv")

  