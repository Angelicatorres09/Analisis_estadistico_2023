#ALUMNA: ANGELICA TORRES GARCIA
#MATRICULA:2173388
#FECHA:03/02/2023

#ASIGNACION 1.  PRIMER ANALISIS EN R

#PARTE 2. PROBLEMAS

#PROBLEMA 1

#Un investigador realiza un inventario de la superficie en la región centro mediante los reportes emitidos por CONAFOR.El investigador  encuentra que la superficie reforestada con diferentes especies son las siguientes: la especie Pinus con 3140 has, Mezquite con 1453 has,Encinos 450 has, Teka con 1200 has,Juniperus con 720 has. 

Especie <- c('Pinus', 'Mezquite', 'Encinos', 'Teka', 'Juniperus')
superficie <- c(3140,1453,450,1200,720)
barplot(height=superficie, names=Especie)

sort(superficie)
barplot(sort(superficie))
mean(superficie)

#Problema 2

#Un técnico examina 30 cajas de Petri en las que se colocaron para germinar seis semillas y despues de cierto tiempo cuenta el número de semillas germinadas en cada una de ellas. Los valores de las 30 observaciones son los siguientes:

germinación <- c(4, 1, 6, 2, 4, 2, 4, 2, 4, 6, 3, 5, 3, 2, 5, 4, 0, 5, 4, 2, 4, 5, 3, 5, 3, 5, 4, 3, 6, 2) 
mean(germinación)
sd(germinación)   

#Problema 3

#Un viverista mide la altura alcanzada por 25 plantas de Prosopis de un año de edad, obteniendo los siguientes valores.

Altura <-c(38, 14, 44, 11, 9, 21, 39, 28, 41, 4, 35, 24, 36, 12, 20, 31, 24, 25, 10, 21, 11, 36, 37, 20, 26)
mean(Altura)
sd(Altura)
