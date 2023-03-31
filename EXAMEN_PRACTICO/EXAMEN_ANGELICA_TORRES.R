                   #ANGELICA TORRES GARCÍA
                      #31/03/2023
                  #MATRICULA 2173388

library(repmis)
suelo<- source_data("https://www.dropbox.com/s/3pi3huovq6qce42/obs.csv?dl=1")


suelo$zone <- factor(suelo$zone)
as.factor(suelo$zone)

suelo$wrb1 <- factor(suelo$wrb1)
as.factor(suelo$wrb1)

# ACTIVIDAD_1 -------------------------------------------------------------

summary(suelo$Clay1)
summary(suelo$Clay2)
summary(suelo$Clay5)


# ACTIVIDAD_2 -------------------------------------------------------------

stem(suelo$Clay1)

#p2 con sesgo

# ACTIVIDAD_3 -------------------------------------------------------------

boxplot(suelo$Clay1)

#P3 si existen.

#P4 

which(suelo$Clay1 > 65)


# ACTIVIDAD_4 -------------------------------------------------------------

mean(suelo$Clay1)

#P5

#el valor de p nos indica quen si hay una diferencia significativa. las muestras de clay 1 tienen una distribucion normal.

t.test(suelo$Clay1,mu=30) 


# ACTIVIDAD_5 -------------------------------------------------------------

#P6

cor.test(suelo$Clay1, suelo$Clay5)

#relacion positiva

#P7
# Si es estadisticamente significativa


# ACTIVIDAD_6 -------------------------------------------------------------

#P8

# si es posible

#P9

plot(suelo$Clay5~suelo$Clay1)


lm(suelo$Clay5~suelo$Clay1)
regresion <- lm(suelo$Clay5~suelo$Clay1)
regresion

#P10

# si son significativos 

summary(regresion)

#P11

#cuando R cuadrada ajustada esta mas cercano a 1 es un modelo que predice correctamente.

# ACTIVIDAD_7 -------------------------------------------------------------

#P12

# si existe

#P13

boxplot(suelo$Clay5 ~ suelo$zone)

#P13
# son diferentes las cuatro zonas

#P14

by(suelo$Clay5, suelo$zone, summary)

#Las medianas van disminuyendo conforme cambian las zonas de la 1 a la 4

# ACTIVIDAD_8 -------------------------------------------------------------

#P15

varianza <- aov(suelo$Clay5~suelo$zone)
varianza

summary(varianza)

# si existen diferencias significativas ya que P nos da menor a 0.05.

#P16

#el valor de P nos indica que existe diferencia significativa en las 4 zonas
#y las zonas 3 y 4 son estadisticamente diferentes entre si.









