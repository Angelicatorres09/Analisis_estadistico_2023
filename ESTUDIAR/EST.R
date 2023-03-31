library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

#se pone head solo para que aparezcan los primeros 6

head(conjunto)

prof_url <- "http://www.profepa.gob.mx/innovaportal/file/7635/1/accionesInspeccionfoanp.csv"
profepa <- read.csv(prof_url)
head(profepa)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")
prof_url_2
profepa <- read.csv(prof_url)
head(profepa2)

prof_url_2 <- paste0("http://www.profepa.gob.mx/innovaportal/",
                     "file/7635/1/accionesInspeccionfoanp.csv")
profepa2 <- read.csv(prof_url_2)
head(profepa2)

#Para descargar los datos de Github podemos utilizar la paquetería readr y su función read_csv:

library(readr)

file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)
head(inventario)

#HISTOGRAMAS

mamiferos <- read.csv("https://www.openintro.org/data/csv/mammals.csv")
mamiferos

hist(mamiferos$total_sleep)

#histogramas presentables

hist(mamiferos$total_sleep, # Datos
     xlim = c(0,20), ylim = c(0,14), # Cambiar los límites de x & y
     main = "Total de horas sueño de las 39 especies", # Cambiar el título
     xlab = "Horas sueño", # Cambiar eje de las x
     ylab = "Frecuencia", # Cambiar eje de las y
     las = 1, # Cambiar orientación de y
     col = "#996600") # Cambiar color de las barras

# Barplot o gráfico de barras

data("chickwts")
head(chickwts[c(1:2,42:43, 62:64), ])

#acomodar datos en columnas

feeds <- table(chickwts$feed)
feeds

barplot(feeds)

# ordenar de forma decreciente

barplot(feeds[order(feeds, decreasing = TRUE)])

#Selección mediante restricciones

#igual o mayor (>=), mayor que (>), igual que (==)
#igual o menor (<=), menor que (<), no igual (!=)

#Para mostrar como funcionan las restricciones podemos realizar las siguientes preguntas: ¿Cuántos
#individuos tiene un diámetro menor (<) a 10 cm? 

sum(trees$dbh < 10)

#También es interesante saber cuales son los individuos que son inferiores al diámetro (dbh< 10 cm).
#Para esto, hacemos uso de la función which que no regresara cuales individuos son los que posen tal
#restricción.

which(trees$dbh < 10)

#Otro ejemplo de la utilidad de emplear las condicionantes es: Excluir los diámetros que se encuentran
#en la parcela 2. El objeto resultante se puede grabar como trees.13. El símbolo ! indica NO.

trees.13 <- trees[!(trees$parcela=="2"),]
trees.13

#El objeto inventario es un conjunto de datos. Por lo general, después de importar un grupo de
#datos en R, es posible que desee utilizar algunas funciones para inspeccionar sus propiedades y
#funciones y estructura básica:

#str(inventario): mostrar la estructura general de los datos
#dim(inventario): dimensiones (i.e. tamaño) del conjunto de datos
#head(inventario, n = 5): muestra las primeras n filas
#tail(inventario, n = 5): muestra las últimas n filas
#names(inventario): nombre de las columnas
#colnames(inventario): igual names(inventario)
#summary(inventario): resumen estadístico de las variables presentes en inventario

# dimensiones (num filas y columnas)
dim(inventario)

# nombre de las primeras cinco columnas
names(inventario[ ,1:5])

# Resumen estadístico básico de las columnas 3 a 5 columnas
summary(inventario[ ,3:5])

#Tablas de frecuencia

freq_position <- table(inventario$Posicion)
freq_position

#Frecuencia relativa

prop_position <- freq_position / sum(freq_position)
prop_position

#Si desea expresar las proporciones como porcentajes, multiplique prop_position por 100:

perc_position = 100 * prop_position
perc_position

#Gráficas barplot y pie
#Para crear un gráfico de barras en R puede usar la función barplot(). Esta función requiere un
#vector numérico o una tabla de frecuencias:

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#El uso de barplot () incluye los argumentos las,border y cex.names:

+las = 1: muestra las frecuencias perpendiculares al eje-y.
+border = NA: elimina el borde negro alrededor de las barras.
+cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas quepan
                                                                   en el gráfico).

#GRAFICO CIRCULAR O PIE

# topo.colors es una paleta de colores pre establecidas en R y
# el paréntesis indica el # de colores a usar

pie(freq_position, col=topo.colors(4))

#Si desea mostrar las frecuencias, puede hacer algo como esto:
 
 pie(freq_position, col = topo.colors(4),
      labels = paste(levels(inventario$Posicion), round(perc_position, 2), " %"))
 
 
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
 quantile(fires, c(.75)
          
          #7. Media
          mean(fires)
          
          #8. Varianza
          var(fires)
          
          #9. Desviación estándar
          sd(fires)
          
          #10. Realice un boxplot personalizado con los datos de los incendios.
          boxplot(fires, horizontal = TRUE, col ="orange" )
          
          #moda
          library(modeest)
          mfv(set)
          
          #mediana
          median(set)
          
          #media
          mean(set)

