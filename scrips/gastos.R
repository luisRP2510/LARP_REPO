#Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
transporte <- 240 
comestibles <- 1527
gimnasio <- 400
alquiler <- 1500
otros <- 1833

total <- celular + transporte + comestibles + gimnasio + alquiler + otros

total * 5

##[1] 29000

total + 10

##[] 5810

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)

barplot(gastos)

sort(gastos)

##[1] 240  300  400   1500   1527    1833