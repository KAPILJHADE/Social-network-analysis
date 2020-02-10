library(igraph)
g<-sample_fitness_pl(10000, 30000, 2.2 ,exponent.in = -1, loops = FALSE, multiple = FALSE,finite.size.correction = TRUE)
#t = table(degree(G2))

#g <- sample_fitness_pl(10000, 30000, 2.2, 2.3)
t = table(degree(g))
plot(t , xlab="Degree", ylab="Frequency")
#plot(degree_distribution(g, cumulative=TRUE, mode="out"), log="xy")
#plot(t ,xlim=c(xlab="Degree", ylab="Frequency")
