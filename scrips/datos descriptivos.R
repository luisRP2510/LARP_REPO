# 23/02/2026
#MAGT


#Ingresar datos en r 

altura <- c(156, 187, 178, 168, 167, 173, 175)

set.seed(123)
altura <- sample(x=160:185, size = 100, replace = TRUE)
mean(altura)
var(altura)

hist(altura,
     col = "lightgreen",
     xlab = "Altura (cm)",
     ylab = "Frecuencia",
     main = "",
     ylim = c(0,20))

stem(altura)
boxplot(altura)

shapiro.test(altura)