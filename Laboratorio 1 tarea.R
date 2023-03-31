#Alumno: Angelica Torres Garcia
#Matricula:2173388

#Laboratorio 1 Empezar con R Rstudio

#Gastos totales
300 + 240 + 1527 + 400 + 1500 + 1833

celular <- 300
celular
transporte <- 240
transporte
comestibles <- 1527
comestibles
gimnasio <- 400
gimnasio
alquiler <- 1500
alquiler
otros <- 1833
otros

gastos_totales <- c(celular,transporte,comestibles,gimnasio, alquiler,otros)
gastos_totales
gastos_totales <- c(celular + transporte + comestibles + gimnasio + alquiler + otros) 
gastos_totales
gastos_durante_5meses <- (gastos_totales*5)
gastos_durante_5meses
gastos_durante_10meses <- (gastos_totales*10)
gastos_durante_10meses

gastos <- c(celular, transporte, comestibles, gimnasio, alquiler, otros)
gastos
barplot ((sort)(gastos)) 
variables <- c('celular','transporte','comestible','gimnasio','alquiler','otros')
variables
cantidades <- c(300,240,1527,400,1500,1833)
cantidades
barplot(height=cantidades,names=variables,col=c('orange','red','pink','yellow','green','white'))

#parte II variables

#problema 1

#identifique el número de la variable (cualitatva y cuantitativa) para la lista de preguntas de una encuesta aplicada a estudiantes universitarios en una clase de estadistica:

#variables cualitativas

#nombre de estudiante. 
#fecha de nacimiento (p.Ej.,21/10/1995)
#dirección de casa (por ejemplo,1234 Ave. Alamo)
#número de telefono (por ejemplo,510-123-4567)
#area principal de estudio
#calificación general:A,B,C,D,F
#grado de año universitario:primer año, segundo año, tercer año, ultimo año

#variables cuantitativas

#edad (en años )
#puntaje en la pruba de mitad de periodo (basado en 100 puntos posibles)
#número de hermanos
#tiempo (en minutos) para completar la prueba final de MCF 202

#problema 2

#Estados unidos

#Variables cuantitativas

#¿Cuantos estados tiene?
#¿cuantos muncipios tiene?
#¿cuántos habitantes tiene el país?
#¿Cuántas universidades hay en el pais?
#¿Cuántos automoviles se fabrican en el pais?
#¿Cuántos habitantes del pais tienen diabetes?
#¿cuantos cines se encuentran en el pais?

#Variables categoricas

#¿cual muncipio de estados unidos tiene mas habitantes?
#¿Que color de automovil es el mas vendido en Estados Unidos?
#En Estados Unidos hay mas hombres o mujeres?
#¿Cuál es el salario minimo en Estados Unidos?
#¿Cuál estado produce mas manzanas en Estados unidos?
#De la población de estados unidos ¿que porcentaje es Mexicana?
#¿cual es la altura promedio de los estadounidences?

#Problema 3



#Problema 4

#¿cuál es la cantidad promedio de horas que los estudiantes de universidades públicas trabajan cada semana?

#1. Identifique a los individuos de interés: Los estudiantes
#2. Identifique la variable: horas que trabajan
#3. Determine si cada variable es categorico o cuantitativo: categorico

#¿Que proporción de todos los estudiantes universitarios de México están inscritos en una universidad pública?

#1. Identifique a los individuos de interés: Los estudiantes
#2. Identifique la variable:proporción de estudiantes que estan inscritos
#3. Determine si cada variable es categorico o cuantitativo: Categorica

#¿En las universidades públicas,¿ las estudiantes femeninas tiene un promedio de CENEVAL más alto que los estudiantes varones?

#1. Identifique a los individuos de interés: Los estudiantes femeninas y los estudiantes varones
#2. Identifique la variable: promedio de CENEVAL
#3. Determine si cada variable es categorico o cuantitativo: cuantitativa

#¿Es mas probable que los atletas universitarios reciban asesoramiento academico que los atletas no universitarios?

#1. Identifique a los individuos de interés: atletas universitarios y atletas no universitarios
#2. Identifique la variable: asesoramiento academico
#3. Determine si cada variable es categorico o cuantitativo: categorica

#Si reunieramos datos para responder a las preguntas de la investigación anterior, ¿qué datos podrian analizarse mediante un histograma?
#la proporción de estudiantes y los promedios de las estudiantes femeninas y los estudiantes varones.

# ¿cómo sabes? porque son variables que se pueden clasificar en rangos.