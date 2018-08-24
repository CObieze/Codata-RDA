library("data.table")
library("ggplot2")
install.packages("recommenderlab")
library("recommenderlab")

movies = read.csv("data/ml-latest-small/movies.csv")
str(movies)
head(movies, n=10)
View(movies)

ratings = read.csv("data/ml-latest-small/ratings.csv")
str(ratings)
head(ratings, n=10)
View(ratings)

unique_ratings = unique(ratings)
ggplot(ratings, aes(x = rating)) +
  geom_histogram()

ggplot(unique_ratings, aes(x = rating, fill = factor(rating))) +
  geom_histogram()


movgen <- as.data.frame(movies$genres, stringsAsFactors = FALSE)
movgen2 <- as.data.frame(tstrsplit(movgen[,1], '[|]', type.convert = TRUE),
                         stringsAsFactors = FALSE)
colnames(movgen2) <- c(1:7)
head(movgen2, n=4)

