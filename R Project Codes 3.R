#Scatter Plot
plot(iris$Sepal.Length, iris$Sepal.Width, pch=19,
     col=iris$Species,
     main="Scatter Plot",
     xlab = "Sepal.Length", ylab = "Sepal.Width")
legend("topright", legend = levels(iris$Species),
       col = 1:3, pch = 19)

#Histogram
hist(iris$Petal.Length, main = "Histogram of Petal.Length",
     xlab = "Petal.Length", col = "skyblue")

#Pie Chart
pie(table(iris$Species), main = "Pie Chart of Species Distribution",
    col = c("purple", "pink", "blue"))

#Heatmap for Correlation Matrix
install.packages("corrplot")
library(corrplot)
corr_matrix <- cor(iris[, 1:4])
corrplot(corr_matrix, method = "color",
         addCoef.col = "blue", tl.col = "black",
         tl.srt = 45)

#Radar Chart
install.packages("fmsb")
library(fmsb)
iris_sub <- aggregate(iris[, 1:4], by = list(Species = iris$Species), mean)
iris_sub <- iris_sub[, -2]
radarchart(iris_sub, axistype = 1, seg = 4, pcol = c("purple", "pink", "green"))

#Violin Plot
# Violin plot of Sepal.Length by Species
library(ggplot2)
ggplot(iris, aes(x = Species, y = Sepal.Length, fill = Species)) +
  geom_violin() +
  ggtitle("Violin Plot of Sepal.Width by Species")

#Boxplot
boxplot(Petal.Length ~ Species, data = iris,
        col = c("pink", "skyblue", "green"),
        main = "Boxplot of Petal.Length by Species",
        xlab = "Species", ylab = "Petal.Length")


