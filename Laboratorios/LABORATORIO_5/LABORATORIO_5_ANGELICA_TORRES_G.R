
                  #Angelica Torres García
                  #22/02/2023
                  #2173388

       # LABORATORIO 5. CORRELACIÓN

#Actividades

#Generar los gráficos de distribución de puntos para cada par de datos

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20)
plot(anscombe$x2, anscombe$y2, pch = 20)
plot(anscombe$x3, anscombe$y3, pch = 20)
plot(anscombe$x4, anscombe$y4, pch = 20)
par(op)

#Coeficiente de correlación

cor.test(anscombe$x1, anscombe$y1)
cor.test(anscombe$x2, anscombe$y2)
cor.test(anscombe$x3, anscombe$y3)
cor.test(anscombe$x4, anscombe$y4)
