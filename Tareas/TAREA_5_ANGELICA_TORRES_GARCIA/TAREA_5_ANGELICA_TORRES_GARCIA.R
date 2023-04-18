                   #Angelica Torres García
                   #22/02/2023
                   #2173388

                  #TAREA 5 CORRELACIÓN


# EJERCICIO_1 -------------------------------------------------------------

#CUADRO 1

speed <- c(2, 3, 5, 9, 14, 24, 29, 34)
speed
Abundance <- c(6, 3, 5, 23, 16, 12, 48, 43) 
Abundance

#Si creamos un diagrama de dispersión de los datos del cuadro 1, vemos el patrón con mayor claridad (Figura  ).

plot(speed, Abundance, pch=19)

cor.test(speed,Abundance)

# ¿Es estadísticamente significativa la correlación?

# si porque el valor de p es menor a 0.05

#Comenzamos con una hipótesis para probar. En este caso, esperamos una mayor abundancia de efímeras a medida que aumenta la velocidad del arroyo. Escribiríamos esto formalmente (nuestra hipótesis alternativa H1) como: 

#“Existe una correlación positiva entre la velocidad de los arroyos y la abundancia de efímeras (Ecdyonurus dispar)”.

#Estamos diciendo que la relación es positiva debido a la investigación previa que hemos realizado (lectura de artículos, etc.). 

#Nuestra hipótesis nula (H0) ahora se convierte en: “No existe una correlación entre la velocidad del arroyo y la abundancia de efímeras”.

# EJERCICIO 2 -------------------------------------------------------------

suelos <- read.csv("suelo.csv")
suelos

cor.test(suelos$pH, suelos$N)
cor.test(suelos$pH, suelos$Dens)
cor.test(suelos$pH, suelos$P)
cor.test(suelos$pH, suelos$Ca)
cor.test(suelos$pH, suelos$Mg)
cor.test(suelos$pH, suelos$K)
cor.test(suelos$pH, suelos$Na)
cor.test(suelos$pH, suelos$Conduc)

cuadro3 <- read.csv("cuadro3.csv")
cuadro3

#grafica de correlación

suelo.1 <- suelos[,7:15]
suelo.1

#correlación

suelos.cor <- round(cor(suelo.1), digits = 4)
suelos.cor

library(corrplot)

corrplot(suelos.cor, tl.col="orange", bg="white", tl.srt = 35,
         title="grafica de correlación de suelos", 
         addCoef.col= "black",type="upper")





