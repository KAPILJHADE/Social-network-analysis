library(igraph)
sample_pa(n, power = 1, m = NULL, out.dist = NULL, out.seq = NULL,
          out.pref = FALSE, zero.appeal = 1, directed = TRUE,
          algorithm = c("psumtree", "psumtree-multiple", "bag"),
          start.graph = NULL)
g <- sample_pa(10000)
degree_distribution(g)
t = table(degree(g))
plot(t / sum(t),xlab="Degree", ylab="Frequency")
