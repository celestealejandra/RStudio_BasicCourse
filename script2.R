#CLASE 2 RSTUDIO 
#COMO LIMPIAR EL ESPACIO -----------
#podemos liberar espacio que ocupa R en el uso de la memoria RAM
gc()    #general cleanup 
rm(dado) #remover objetos del ambiente
rm(moneda)
#o podemos usar la escobita para limpiar tanto el ambiente como 
#la consola y el historial 

#SECUENCIAS ------------
#en R podemos realizar secuencias sencillas
1:10
#podemos usar la función seq para secuencias más complejas
#seq ( from , to, by) ó seq( inicio, fin, incremento)
seq(1,10,0.5)
#una secuencia que vaya del 10 a 100 en incrementos de 5
seq(10, 100, 5)
#también está la función rep que es para repeticiones
rep("hola",2)

#VECTORES ------------
#ya hemos trabajado con vectores
#es el almacenamiento de varios datos en un solo espacio
dado <- c(1,2,3,4,5,6) #vector numérico
moneda <- c("Sol", "Águila") #vector de caractéres
#podemos buscar cosas específicas en los vectores por medio de corchetes
moneda[2]
#podemos agregar un factor adicional a los vectores 
moneda[3] <- "Presidente"
moneda

#MATRICES -----------
#Son muy importante y uno de los principales elementos del trabajo en R
#utilizan la función matrix (nrow=, ncol=, byrow = true )
                   #numero de filas, numero de columnas, matriz llenada x filas
m <- matrix (nrow=4, ncol=3, 1:12, byrow = TRUE)
m
dim(m)
#nos muestra el número de filas y columnas

##MATRIZ NÚMERO UNO ------
a <- 1:3
b <- 6:8
#unimos los vectores para hacer una matriz
cbind(a,b) #unimos por columnas
rbind(a,b) #unimos por filas
m1 <- cbind(a,b)
m1

##MATRIZ NÚMERO DOS ----
dias <- c("LUNES", "MARTES", "MIERCOLES", "JUEVES", "VIERNES")
visitas <- c(2,8,10,11,19)
#podemos cambiarlo por una muestra aleatoria
visitas <- sample(10:30, 5, replace = TRUE)
visitas
#unimos los vectores en una matriz por columnas
visitas_semana <- cbind(dias, visitas)
visitas_semana
  #podemos cambiarlo a que se junten por fila
visitas_semana <- rbind(dias, visitas)
visitas_semana

#ABRIR UNA BASE DE DATOS--------------
#creemos una carpeta en nuestra carpeta de proyecto que se llame "datos"
#descargamos el archivo y lo ponemos en la carpeta "datos"
##PAQUETERÍAS --------------
#las paqueterías contienen funciones y otros elementos que
#nos ayudan a hacer diferentes cosas con la información
#para instalar usamos install.packages y el nombre de la paquetería

install.packages("readxl") #instalamos
library(readxl) #llamamos a la paquetería 
##ECRIBIR EL PATH ------------
data <- readxl::read_xlsx("datos/sampledata.xlsx",
                          sheet="PlayerData") #escribimos el path
                        #seleccionamos la hoja en donde vamos a trabajar
data #revisamos nuestra base de datos 

##REVISIÓN -------------------
###PAQUETERÍAS -------
install.packages("dplyr")
install.packages("janitor")
install.packages("magrittr")
library(dplyr)
library(janitor)
library(magrittr)

names(data)
head(data)
summary(data)

data$Year
data$NAME
