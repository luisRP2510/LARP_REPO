#Prueba de T

Calidad <- read.csv("ejemplo_2.csv", header = T)
Calidad$Tratamiento <- as.factor(Calidad$Tratamiento)

hist (subset(Calidad$IE, Calidad$Tratamiento == "Ctrl"))
hist (subset(Calidad$IE, Calidad$Tratamiento == "Fert"))

boxplot(Calidad$IE ~ Calidad$Tratamiento,
        xlab = "Nivel de factor",
        ylab = "Frecuencia",
        col = "skyblue")

#separar los niveles de factor 

Ctrl <- (subset(Calidad$IE, Calidad$Tratamiento == "Ctrl"))
Fert <- (subset(Calidad$IE, Calidad$Tratamiento != "Ctrl"))


shapiro.test(Ctrl)
shapiro.test(Fert)

var(Ctrl)
var(Fert)

bartlett.test(Calidad$IE ~ Calidad$Tratamiento)


t.test(Calidad$IE ~ Calidad$Tratamiento, var.equal = T)