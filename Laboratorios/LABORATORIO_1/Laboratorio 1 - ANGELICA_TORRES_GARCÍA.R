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
barplot(height=cantidades,names=variables,col=c('blue','red','pink','yellow','green','white'))

#parte II variables

#problema 1

#identifique el número de la variable (cualitatva y cuantitativa) para la lista de preguntas de una encuesta aplicada a estudiantes universitarios en una clase de estadistica:

#variables cualitativas

#+ nombre de estudiante. 
#+ fecha de nacimiento (p.Ej.,21/10/1995)
#+ dirección de casa (por ejemplo,1234 Ave. Alamo)
#+ número de telefono (por ejemplo,510-123-4567)
#+ area principal de estudio
#+ calificación general:A,B,C,D,F

#variables cuantitativas

#+ edad (en años )
#+ 

