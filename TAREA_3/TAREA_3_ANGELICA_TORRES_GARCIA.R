#Angelica Torres García
#22/02/2023
#2173388

#ASIGNACIÓN 3. MEDIDAS DE TENDENCIA CENTRAL

#PROBLEMAS


# PROBLEMA_1 --------------------------------------------------------------

#Considere los siguinetes datos de x & y

x <- c(6, 4, 1, 3)
x

y <- c(1, 3, 4, 2)
y

sum(x) 
prod(x)

sum(y)
prod(y)


# PROBLEMA_2 --------------------------------------------------------------

#Se enuncian dos conjunto de datos que contienen la alturas de plántulas (cm) producidas en vivero. El primero conjunto contiene solo 4 alturas y el segundo consta de 15.

GRUPO_A <- c(80, 90, 90, 100)
GRUPO_A

GRUPO_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)
GRUPO_B


#a. Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.

#GRUPO_A

#b. Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en altura más grande? 

mean(GRUPO_A) 

mean(GRUPO_B)

#Coincide con su primera impresión?
# SI


# PROBLEMA_3 --------------------------------------------------------------

#José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escala de 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el 4to examen para tener una media de 80 en los 4 exámenes?

#80= (87+72+85+x)/4

#80*4= 87+72+85+x

#320= 244 + x

#x = 320-244

#x=76

jose <- c(87,72,85,76)
jose

mean(jose)


# PROBLEMA_4 --------------------------------------------------------------

#El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños por hogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en la ciudad por 50 y determine que el número promedio de niños por hogar es 2.2. ¿Cuál de lo siguientes enunciados debe ser verdad?

#a) La mitad de los hogares de la ciudad tienen más de 2 hijos.
#b) Hay un total de 110 niños en la ciudad. ......Verdadero
#c) El número más común de niños en un hogar es 2.2.
#d) Nunguna de las anteriores.

# PROBLEMA_5 --------------------------------------------------------------

#El numéro de semillas germinadas (Germinaciones) que se encontraron en las cajas petri


Germinaciones <- c(5, 6, 7, 8, 9)
Germinaciones
cajas_petri <- c(1, 3, 5, 3, 1)
cajas_petri

Germinacion <-data.frame(Germinaciones,cajas_petri)
mean(Germinacion$Germinaciones)

Germ.2 <- c(5, 6, 6, 6, 7, 7 ,7 ,7, 7, 8, 8, 8, 9)
caja_petri <- c(1:13)

Germinacion.2 <- data.frame(caja_petri, Germ.2)
Germinacion.2

#a) ¿Qué tipo de gráfico podrías usar para visualizar estos datos?

# se puede observar mas claramente con un histograma

stem(Germinacion.2$Germ.2)

hist(Germinacion.2$Germ.2)

#b) ¿Cuál es la media? Muestre su trabajo o código, o explique cómo obtuvo su respuesta

mean(cajas_petri)

#c) ¿Cuál es la mediana? Muestre su trabajo o código, o explique cómo obtuvo su respuesta


median(cajas_petri)


# PROBLEMA_6 --------------------------------------------------------------

#En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 1) sumar el mismo número a cada valor de datos, y 2) de multiplicar cada valor de datos por el mismo número.

set <- c(2, 2, 3, 6, 10)
set

#a) Calcule la moda, la mediana y la media.

#moda
library(modeest)
mfv(set)

#mediana
median(set)

#media
mean(set)

#b) Suma 5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media.

set.5 <-(set+5)
set.5

#Moda

mfv(set.5)

#mediana

median(set.5)

#media

mean(set.5)

#c) Compare los resultados de las partes (a) y (b). En general, ¿cómo crees que la moda, la mediana y la media se ven afectadas cuando se agrega la misma constante a cada valor de datos en un conjunto?

#no afecta solo cambian los valores.

#d) Multiplique cada valor de los datos por 5. Calcule la moda, la mediana y la media.

mul.5 <- (set*5)
mul.5

#moda

mfv(mul.5)

#mediana

median(mul.5)

#media

mean(mul.5)

#e) Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda, La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto se multiplica por la misma constante?

# no afecta solo cambian los valores ahora estan exponenciales

# PROBLEMA_7 --------------------------------------------------------------

# Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

#a) Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). Encontrar un conjunto diferente de 5 dígitos que tambien funcionen.

digitos <- c(5, 6, 7, 8, 9)
digitos

#mediana

median(digitos)

#media

mean(digitos)

#b) Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones). Da la media de tus 5 dígitos. Encuentra un conjunto diferente de 5 dígitos que funcione.

digitos.2 <- c(5, 4, 7, 8, 9)
digitos.2

#mediana

median(digitos.2)

#media

mean(digitos.2)

digitos.3 <- c(1, 7, 7, 7, 8)
digitos.3

#mediana

median(digitos.3)

#media

mean(digitos.3)

