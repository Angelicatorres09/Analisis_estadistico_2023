#Angelica Torres García
#22/02/2023
#2173388

#Asignación 2: USO DE RESTRICCIONES Y ESTADISTICAS DESCRIPTIVAS


# IMPORTAR BASE DE DATOS --------------------------------------------------

#Importar la base de datos de excel a R en un objeto llamada conjunto.

conjunto <- read.csv("cuadro1.csv",header = TRUE)
head(conjunto)

#Líneas de comando en R

library(repmis)

conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)


# SELECCION DE DATOS ------------------------------------------------------

#Aplicar la función subset para la variable Altura

#Incluir los datos iguales o menores a la media (objeto en R se llame: H.media)

mean(conjunto$Altura)

H.media <- subset(conjunto,Altura<=mean(conjunto$Altura))
H.media

#Incluir los datos menores a 16.5 m (objeto en R se llame: H.16)

H.16 <- subset(conjunto,Altura<16.5)
H.16

#Aplicar la función subset para la variable Vecinos

#Incluir los árboles que tengan un número de vecinos iguales o menores a 3 (Objeto en R:Vecinos-3)

Vecinos3 <- subset(conjunto,Vecinos<=3)
Vecinos3

#Incluir los árboles que tengan un número de vecinos mayores a 4 (Objeto en R:‘Vecinos-4)

Vecinos4 <- subset(conjunto,Vecinos>4)
Vecinos4

#Aplicar la función subset para la variable Diametro

#Incluir los diámetros menores a la media (objeto en R: DBH-media)

dbh.media <- subset(conjunto, Diametro<mean(conjunto$Diametro))
dbh.media

#Incluir los diámetros mayores a 16 (Objeto en R DBH-16)

DBH.16 <- subset(conjunto,Diametro>16)
DBH.16

#Aplicar la función subset para la variable Especie

#Incluir la especie Cedro Rojo

Cedro_rojo <- subset(conjunto, Especie=="C")
Cedro_rojo

#Incluir la especie Tsuga heterófila y Douglasia verde

Tsuga_Douglasia <- subset(conjunto,Especie!="C")
Tsuga_Douglasia

#Determinar cuantas observaciones son menores o iguales a 16.9 cm de Diametro

Diametro_cedro_rojo <- subset(Cedro_rojo, Diametro<=16.9)
Diametro_cedro_rojo

Diametro_Tsuga_Douglasia <- subset(Tsuga_Douglasia, Diametro<=16.9)
Diametro_Tsuga_Douglasia

#Determinar cuantas observacions son mayores a 18.5 metros de Altura

Altura_cedro_rojo <- subset(Cedro_rojo, Altura>18.5) 
Altura_cedro_rojo

Altura_Tsuga_Douglasia <- subset(Tsuga_Douglasia,Altura>18.5)
Altura_Tsuga_Douglasia


# VISUALIZACION DE DATOS --------------------------------------------------

#Con la función hist generar los histogramas para los objetos creados en el apartado anterior

#Altura, H.media y H.16

hist(conjunto$Altura)

hist(H.media$Altura)

hist(H.16$Altura)

# Vecinos, Vecinos-3, Vecinos-4

hist(conjunto$Vecinos)

hist(Vecinos3$Vecinos)

hist(Vecinos4$Vecinos)

#Diametro, DBH-media, DBH-16

hist(conjunto$Diametro)

hist(dbh.media$Diametro)

hist(DBH.16$Diametro)


# ESTADISTICAS BASICAS ----------------------------------------------------

#Determinar la media (mean) de los objetos (variable y respectivos subsets), así como su desviación estándar (sd)

#Altura, H.media y H.16

mean(conjunto$Altura)
sd(conjunto$Altura)

mean(H.media$Altura)
sd(H.media$Altura)

mean(H.16$Altura)
sd(H.16$Altura)

#Vecinos, Vecinos-3, Vecinos-4

mean(conjunto$Vecinos)
sd(conjunto$Vecinos)

mean(Vecinos3$Vecinos)
sd(Vecinos3$Vecinos)

mean(Vecinos4$Vecinos)
sd(Vecinos4$Vecinos)

#Diametro, DBH-media, DBH-16

mean(conjunto$Diametro)
sd(conjunto$Diametro)

mean(dbh.media$Diametro)
sd(dbh.media$Diametro)

mean(DBH.16$Diametro)
sd(DBH.16$Diametro)

