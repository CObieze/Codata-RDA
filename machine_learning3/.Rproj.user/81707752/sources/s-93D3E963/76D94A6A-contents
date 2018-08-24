install.packages("kohonen")
library(kohonen)
help(som)
help("somgrid")

d = read.table("data/Sample2", header = FALSE)
d = as.matrix(d[,-1])
k = som(d, somgrid(20,20), rlen = 70, alpha = 0.005)
plot(k, type = 'count')
