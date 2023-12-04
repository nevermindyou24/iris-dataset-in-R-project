table(iris$Species, iris$Petal.Width>1.2)
table(iris$Species, iris$Petal.Length>1.2)

shapiro.test(iris$Sepal.Length)
shapiro.test(iris$Sepal.Width)

t.test(iris$Sepal.Length, iris$Petal.Length, paired = TRUE)
t.test(iris$Sepal.Width, iris$Petal.Width, paired = TRUE)

mean(iris$Sepal.Length)
mean(iris$Sepal.Width)

sd(iris$Petal.Length)
sd(iris$Petal.Width)

quantile(iris$Sepal.Length)
quantile(iris$Sepal.Width)
