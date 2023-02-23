#Angelica Torres García
#22/02/2023
#2173388


# LABORATORIO SEMANA 3

# PARTE 1 IMPORTAR DATOS --------------------------------------------------

trees <- read.csv("DBH_1.csv",header = TRUE)

head(trees)

dbh <- c(16.5, 25.3, 22.1, 17.2, 16.1, 8.1, 34.3, 5.4, 5.7, 11.2, 24.1, 14.5, 7.7, 15.6, 15.9, 10, 17.5, 20.5, 7.8, 27.3, 9.7, 6.5, 23.4, 8.2, 28.5, 10.4, 11.5, 14.3, 17.2, 16.8)
library(repmis)
prof_url <- source_data("http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv")
head(prof_url)

prof_url_2 <- source_data (paste0("http://www.profepa.gob.mx/innovaportal/", "file/7635/1/accionesInspeccionfoanp.csv")) 
head(prof_url_2)

#Datos de URL seguras (https): Dropbox y Github

library(repmis) 
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

library(readr)
File <- paste0("https://raw.githubusercontent.com/mgtagle/", 
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(File)

head(inventario)


# #PARTE 2. OPERACIONES CON LA BASE DE DATOS ------------------------------

#Media 
#el signo de $ informa que necesitamos la calumna dbh

mean(trees$dbh) 

#Desviación estandar

sd(trees$dbh)

#Selección mediante restricciones

#Los condicionantes restrictivas más empleadas son:

#igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)

# Indica la sumatoria de los individuos en el objeto tree con un dbh < a 10

sum(trees$dbh < 10)

#para saber cuales son los individuos que son inferiores al diámetro (dbh< 10 cm) se usa la función which

which(trees$dbh < 10)

#Excluir los diámetros que se encuentran en la parcela 2. no tenemos esos datos en la tabla

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13 

#Selección de una submuestra

#se puede obtener mediante la funcion subset

trees.1 <- subset(trees, dbh <= 10)
head(trees.1)

mean(trees$dbh)

mean(trees.1$dbh)

hist(trees$dbh, ylab = "Frecuencia", xlab = "DBH", main = "Muestra orinal trees")

hist(trees.1$dbh, ylab = "Frecuencia", xlab = "DBH", main = "dbh < 10 cm. trees.1")


# PARTE 3. REPRESENTACIÓN GRAFICA -----------------------------------------

#HISTOGRAMAS

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
head(mamiferos)

# Se trabajara con la variable total_sleep para generar el histograma:

hist(mamiferos$total_sleep)

#HISTOGRAMA PRESENTABLE

hist(mamiferos$total_sleep)


hist(mamiferos$total_sleep, #datos
     
     xlim = c(0,20), ylim = c(0,14), main = "Total de horas sueño de las 39 especies", #cambiar titulo
     xlab = "Horas sueño", #cambiar eje de las x
     ylab = "Frecuencia", #cambiar eje de las y
     las = 1, #cambiar orientacion de y
     col = "pink") #cambiar color a las barras

#Barplot o gráfico de barras

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

#Primeramente tendremos que acomodar los datos en columnas

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

# para ordenar de forma decreciente

barplot(feeds[order(feeds, decreasing = TRUE)])

#Barplot presentable

barplot(feeds[order(feeds, decreasing = FALSE)], main ="frecuencia por tipo de alimentación",
        xlab = "Numero de pollos",
        las=1,
        col= "orange",
        horiz = TRUE)

        
        



