#INFORMACIÓN DE PROYECTO ------------
#Esta es una práctica para revisar las bases fundamentales
# de RStudio de forma didáctica :3
#PRIMERAS OPERACIONES -------------
##funciones sencillas -------------
2+2
sqrt(15000) # funcion(argumento)
sqrt(124)

sample(c(1,2,3,4,5,6),2) #sample(x = la población,tamaño de la muestra))

##declarar objetos --------

dado <- c(1,2,3,4,5,6)

sample(dado, 1, replace = TRUE) #sample(x, n, replace= T/F)

"lanzar_dado_100" = sample(dado, 100, replace = TRUE) 

lanzar_dado_100

moneda <- c("Águila", "Sol") #crear una moneda
volado <- sample(moneda,1,replace = TRUE)
volado #resultado de un volado únicamente
"100_volados" <- sample(moneda, 100, replace = TRUE)
`100_volados` #VER EL RESULTADO DE 100 VOLADOS

#TABLAS -----------
##hacer tabla usando table()

table(`100_volados`)/100

tabla_prob <- table(`100_volados`)/100
tabla_prob

#GRÁFICO -------
barplot(tabla_prob)






