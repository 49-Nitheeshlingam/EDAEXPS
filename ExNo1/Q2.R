

iris <- read.csv("iris.csv")

head(iris)
tail(iris)

summary(iris)

mean_versicolor_petal_width <- mean(iris$Petal.Width[iris$Species == "versicolor"])
print(mean_versicolor_petal_width)

hist(iris$Petal.Width, main="Histogram of Petal Width", xlab="Petal Width", col="blue")

sepal_stats <- aggregate(Sepal.Length ~ Species, data=iris, 
                         FUN=function(x) c(mean=mean(x), median=median(x), variance=var(x), std_dev=sd(x)))

sepal_stats_df <- do.call(data.frame, sepal_stats)
colnames(sepal_stats_df) <- c("Species", "Mean", "Median", "Variance", "Standard Deviation")
print(sepal_stats_df)
