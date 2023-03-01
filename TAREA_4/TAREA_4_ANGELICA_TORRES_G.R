                       #Angelica Torres García
                       #22/02/2023
                       #2173388

              #ASIGNACIÓN_4. Boxplot e Histogramas


# HISTOGRAMAS -------------------------------------------------------------


# PROBLEMA_1 --------------------------------------------------------------

#Considere el siguiente conjunto de datos x2 con 1000 números al azar.

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)

# Realiza dos histogramas con las siguientes características:

#1. Incluir los siguientes intervalos de clase y personalizar con los puntos medios de cada intervalo de clase mids:

#[0, 2)
#[2, 4)
#[4, 6)
#[6, 8)
#[8, 10)

diam_hist <- hist(x2, las = 1, col = '#ffc0cb')
diam_hist

h1 <- hist(x2, xaxt = "n",
           breaks = c(0, 2, 4, 6, 8, 10),
           col = "#00cc99", xlab="clase",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,250))
h1
axis(1, h1$mids)

# 2. Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clase mids.

#(0, 1]
#(1, 2]
#(2, 4]
#(4, 7]
#(7, 10]

h2 <- hist(x2, xaxt = "n",freq = TRUE,
           breaks = c(0, 1, 2, 4, 7, 10),
           col = "#00cc99", xlab="clase",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0, 320))
h2
axis(1, h2$mids)


# PROBLEMA 2 --------------------------------------------------------------

  #a. ¿Cuál distribución parece estar sesgada a la derecha?

      #Respuesta D

  #b. ¿Cuál distribución parece estar sesgada a la izquierda?

      #Respuesta A

  #c. ¿Cuál distribución parece ser simétrica o en forma de “campana”?

      #Respuesta C

  #d. ¿Cuál distribución parece ser bimodal?

      #Respuesta B

  #e. ¿Cuál distribución parece mostrar una falta de intervalos?

       # Respuesta C


# PROBLEMA 3 --------------------------------------------------------------

#En R puede importar los datos ya pre cargados en el Software siguiendo el comando data(quakes). Los datos proporcionan la localidad, estaciones que detectaron el terremoto, profundidad en km y la escala de Richter (mag) para 1000 terremotos registrados en la isla de Fiji desde el año de 1964.


data(quakes)

mags <- hist(quakes$mag, xaxt = "n",
             # breaks = c(en caso de necesitar aqui se puede especificar),
             col = "#CD5C5C", xlab="Magnitud de los terremotos",
             ylab= "Frecuencias",
             main = "",
             las = 1,
             ylim = c(0,260))
axis(1, mags$mids)

#Puede tomar en cuenta los siguientes datos que se almacenaron en el objeto mags. para determinar las siguientes preguntas:

mags

#a. ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?

#sesgada a la izquierda

#b. Mencione un intervalo donde ocurren tipicamente las magnitudes.

#4.4 y 4.6

#c. Determine el rango de las magnitudes (Range = Max - Min).

range (quakes$mag,na.rm = TRUE ) 

#d. ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?

clase_5.1 <- subset(quakes,mag>=5.1)
clase_5.1

clase_5.4 <- subset(clase_5.1, mag<=5.4)
clase_5.4

#113*100/1000=11.3

#e. ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?

igual_o_mayor_a_5 <- subset(quakes, mag>=5)
igual_o_mayor_a_5

#f.¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?

igual_o_mayor_a_4.6 <- subset(quakes, mag>=4.6)
igual_o_mayor_a_4.6


# BOXPLOTS ----------------------------------------------------------------


# PROBLEMA 4 --------------------------------------------------------------

#¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercer cuartil?

boxplot(quakes$mag, horizontal = TRUE)

#Respuesta C. 75%


# PROBLEMA 5 --------------------------------------------------------------

#La siguiente figura presenta tres gráficas para los diámetrOs de tres especies diferentes (C, F y H).

#a. ¿Cuál especie tiene el diámetro más pequeño?

       #C

#b. ¿Cuál especie tiene el diámetro más grande?

       #F
#c. ¿Cuál especie tiene el diámetro mínimo más alto?
       
       #C
#d. ¿Cuál especie tiene la mediana de diámetro más pequeña?

       #c

#e. ¿Cuál especie tiene la mediana de diámetro mas grande?
      
       #H

#f. ¿Cuál especie tiene el menor rango de diámetro?
 
      #F

#g. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?

      #C

#h. ¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?

      #H

#i. ¿Cuál especie tiene una distribución simétrica?
  
     #H

#j. ¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ? 

    #F


# PROBLEMA 6 --------------------------------------------------------------

#Los siguientes datos muestran el número de incendios forestales ocurridos en cada semana en nuestros bosques de México. Los datos son del 01. de enero al 04 de marzo del 2021 de acuerdo con el reporte de CONAFOR.

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

#Determine lo siguiente

#1. Valor mínimo

min(fires)

#2. Valor máximo

max(fires)

#2. Valor máximo

range(fires)

#4. Q1 (25 %)

quantile(fires,c(.25))

# 5. Q2 (50 %)

quantile(fires, c(.50))

#6. Q3 (75 %)

quantile(fires, c(.75))

#7. Media

mean(fires)

#8. Varianza

var(fires)

#9. Desviación estándar

sd(fires)

#10. Realice un boxplot personalizado con los datos de los incendios.

boxplot(fires, horizontal = TRUE, col ="orange" )

