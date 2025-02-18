##CODIGO DEL TRABAJO FINAL: ANALISIS DE UN DATASET "EDUCACION SEXUAL"
##ICARO-INTRODUCCION A DATA SCIENCE CON R, PROF. LAYLA SCHELI
###1. poniendo a punto nuestro entorno de trabajo
getwd()
setwd("C:/Users/Christian/Desktop/curso R icaro_UNC/trabajo final del curso")
###2. cargando librerias a ocupar
library(ggplot2)
library(readxl)
library(plotly)
###3. visualizacion primaria de datos
Educacion_Sexual <- read_excel("Educacion Sexual.xlsx")
edsex<-Educacion_Sexual
View(edsex)
summary(edsex)
summarise(edsex)
###4. visualizacion grafica introductoria de datos
hist(x=edsex$num_hijos)
hist(edsex$edad)
hist(edsex$anios_educ)
hist(edsex$bajo_socioecon)
anios.f <- as.factor(edsex$anios_educ)
numhijos.f <- as.factor(edsex$num_hijos)
con_socioecon <- as.factor(edsex$bajo_socioecon)
#bajo nivel socioeconomico, 1 pertenece, 0 no pertenece
pareja <- as.factor(edsex$en_pareja)

###5. analisis grafico de los datos
#Grafico 1: relacion de la edad con los a�os de educacion 
ggplot(edsex, aes(x= edad, fill = anios.f)) + 
  geom_bar(color='black',show.legend = T) +
  labs(x='Edad',
       title='Gr�fico 1: Relacion de la edad con a�os de escolaridad',
       subtitle = 'ICARO - Introducci�n a Data Science con R. Prof: Layla Scheli',
       caption = 'Alumno: Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x= edad, fill = anios.f)) + 
           geom_bar(color='black',show.legend = T))

#Grafico 2: relacion de la edad con la cantidad de hijos
ggplot(edsex, aes(x= edad, fill = numhijos.f)) + 
  geom_bar(color='black',show.legend = T)+
  labs(x='Edad',
       title='Gr�fico 2: Relaci�n de la edad con el n�mero de hijos',
       subtitle = 'ICARO - Introducci�n a Data Science con R. Prof: Layla Scheli',
       caption = 'Alumno: Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x= edad, fill = numhijos.f)) + 
  geom_bar(color='black',show.legend = T))

#Grafico 3: relacion hijos con escolaridad
ggplot(edsex, aes(x= num_hijos, fill = anios.f)) + 
  geom_bar(color='black',show.legend = T)+
  labs(x='N�mero de hijos',
       title='Gr�fico 3: Relaci�n del n�mero de hijos con a�os de escolaridad',
       subtitle = 'ICARO - Introducci�n a Data Science con R. Prof: Layla Scheli',
       caption = 'Alumno: Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x= num_hijos, fill = anios.f)) + 
           geom_bar(color='black',show.legend = T))

#Grafico 4: relacion hijos con condicion socio economica
ggplot(edsex, aes(x= num_hijos, fill = bajose.f)) + 
  geom_bar(show.legend = T) +
  labs(x='N�mero de hijos',
       title='Gr�fico 4: Relaci�n del n�mero de hijos y condici�n socioecon�mica',
       subtitle = 'ICARO - Introducci�n a Data Science con R. Prof: Layla Scheli',
       caption = 'Alumno: Christian Farnast Contardo')

#Grafico 5: relacion de la edad con la condicion socio economica
  ggplot(edsex, aes(x= edad, fill = con_socioecon)) + 
    geom_bar(color='black',show.legend = T)+
    labs(x='Edad',
         title='Gr�fico 5: Relaci�n de la edad y condici�n socioecon�mica',
         subtitle = 'ICARO - Introducci�n a Data Science con R. Prof: Layla Scheli',
         caption = 'Alumno: Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x= edad, fill = con_socioecon)) + 
           geom_bar(color='black',show.legend = T))

#Grafico 6: relacion de la escolaridad con la condicion socioeconomica
ggplot(edsex, aes(x= anios_educ, fill = con_socioecon)) + 
  geom_bar(color='black',show.legend = T)+
  labs(x='A�os de escolaridad',
       title='Grafico 6: Relaci�n de escolaridad con condici�n socioecon�mica',
       subtitle = 'ICARO - Intro a Data Science con R. Prof: Layla Scheli',
       caption = 'Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x=anios_educ, fill = con_socioecon)) + 
           geom_bar(color='black',show.legend = T))

#Grafico 7: relacion de la edad con relacion de pareja
ggplot(edsex, aes(x= edad, fill = pareja)) + 
  geom_bar(color='black',show.legend = T)+
  labs(x='Edad',
       title='Gr�fico 7: Relacion de la edad con relaciones de pareja',
       subtitle = 'ICARO - Intro a Data Science con R. Prof: Layla Scheli',
       caption = 'Christian Farnast Contardo')

ggplotly(ggplot(edsex, aes(x= edad, fill = pareja)) + 
           geom_bar(color='black',show.legend = T))


###ALUMNO DEL CURSO: CHRISTIAN FARNAST CONTARDO###