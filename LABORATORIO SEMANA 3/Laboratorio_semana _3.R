#Angelica Torres García
#22/02/2023
#


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

library(readr)



