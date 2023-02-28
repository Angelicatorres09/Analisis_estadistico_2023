             #Angelica Torres García
             #22/02/2023
             #2173388

# LABORATORIO 4. RESUMIR DATOS GRAFICAMENTE


# IMPORTAR DATOS CSV ------------------------------------------------------

library(readr)

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                  "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)

head(inventario)

#funciones para inspeccionar sus propiedades y funciones y estructura básica:

#str(inventario): mostrar la estructura general de los datos
#dim(inventario): dimensiones (i.e. tamaño) del conjunto de datos
#head(inventario, n = 5): muestra las primeras n filas
#tail(inventario, n = 5): muestra las últimas n filas
#names(inventario): nombre de las columnas
#colnames(inventario): igual names(inventario)
#summary(inventario): resumen estadístico de las variables presentes en inventario

# mostrar la estructura general de los datos

str(inventario)

# dimensiones (num filas y columnas)

dim(inventario)

# nombre de las primeras cinco columnas

names(inventario [1:5])

# Resumen estadístico básico de las columnas 3 a 5 columnas

summary(inventario[ ,3:5])

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario[ ,3:5])


# TABLAS DE FRECUENCIA ----------------------------------------------------

#Una tabla de frecuencias muestra los recuentos de cada categoría. En R, tenemos la función table() para obtener este tipo de tablas.

freq_position <- table(inventario$Posicion)
freq_position

#frecuencias relativas.

prop_position <- freq_position / sum(freq_position) 
prop_position

#Si desea expresar las proporciones como porcentajes, multiplique prop_position por 100:

perc_position = 100 * prop_position
perc_position  


# GRAFICAS BARPLOT Y PIE --------------------------------------------------

#Hay dos gráficos más comunes que se utilizan para visualizar frecuencias:

#Gráficas de barras (barplot)
#Gráficas de pastel (pie)

#El uso de barplot () incluye los argumentos las,border y cex.names:

#las = 1: muestra las frecuencias perpendiculares al eje-y.
#border = NA: elimina el borde negro alrededor de las barras.
#cex.names = 0.7: reduce los tamaños de las etiquetas de categoría (para que todas quepan en el grafico.
                                                                  
barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#Gráfico circular o pie. 

# topo.colors es una paleta de colores pre establecidas en R y
# el paréntesis indica el # de colores a usar

pie(freq_position, col=topo.colors(4))

# Si se desea mostrar las frecuencias, se puede hacer algo como esto:

pie(freq_position, col = topo.colors(4),
    labels = paste(levels(inventario$Posicion), round(perc_position,)," %"))


# AUTOESTUDIO -------------------------------------------------------------

#Completar una tabla de frecuencia y su representación gráfica (barplot y pie) para la variable Especie del conjunto de datos inventario

#tablas de frecuencia

freq_position <- table(inventario$Especie)
freq_position

prop_position <- freq_position / sum(freq_position)
prop_position

#proporciones como porcentajes, multiplique prop_position por 100:

perc_position = 100 * prop_position
perc_position  

#Gráficas barplot y pie

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#Gráfico circular o pie.

pie(freq_position, col=topo.colors(4))

#mostrar frecuencias

pie(freq_position, col = topo.colors(4), labels = paste(levels(inventario$Especie), round(perc_position, 2), " %"))


# REPRESENTACIÓN DE VARIABLES CUANTITATIVAS -------------------------------

#Histogramas

#Vamos a aplicar las función hist para la variable Diametros del connunto invenatrio y guardar la salida en un objeto llamada diam_hist.

diam_hist <- hist(inventario$Diametros, las = 1, col = '#9932CC')

diam_hist

diam_hist$breaks


h1 <- hist(inventario$Diametros, xaxt = "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col = "#FFC0CB", xlab="Diámetros (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)


# AUTOESTUDIO -------------------------------------------------------------

#Realizar el mismo procedimiento para la variable Altura

#HISTOGRAMA

alt_hist <- hist(inventario$Altura, las = 1, col = '#FF4500')
alt_hist

alt_hist$breaks

#personalizar grafica

h1 <- hist(inventario$Altura, xaxt = "n",
           breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
           col = "#87cefa", xlab="Diámetros (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))
axis(1, h1$mids)
