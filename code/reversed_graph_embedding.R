# install.packages("DDRTree")
library(DDRTree)

data = read.csv("/Users/bdo/Documents/Projects/pineapples/data/data_flat_latent_flat.csv", header=FALSE)
data = t(data)  # D * N --> 384 * 1004res

res = DDRTree(data, dimensions=2)
Z = res$Z
Y = res$Y
stree = res$stree

plot(Z[1,], Z[2,], pch=19, cex=0.3)
plot(Y[1,], Y[2,], pch=19, cex=0.3)

write.table(t(Z), "/Users/bdo/Documents/Projects/pineapples/data/graph_points.csv", sep = ',', col.names = FALSE, row.names = FALSE)
