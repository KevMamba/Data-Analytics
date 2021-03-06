data <- read.csv("iris.data")
colnames(data) <- c("sepal_length" , "sepal_width" , "petal_length" , "petal_width" , "species")
summary(data)
plot(data)
cor(data$sepal_length,data$sepal_width)
fit <- lm(data$petal_length ~ data$petal_width)
fit
par(mfrow=c(2,2))
plot(fit)
residuals(fit)
summary(fit)
data2 <- subset(data , data$species != 'Iris-setosa')
plot(data2)
cor(data2$petal_length , data2$petal_width)
fit <- lm(data2$petal_length ~ data2$petal_width)
summary(fit)
