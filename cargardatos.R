#******************************************************************
#Encuentra las cordenadas X
crearDatosX <-function(a,nombre){
	
	datos <- read.csv(nombre, skip= 1)
	a <- datos$X
	
return(a)
}

#*******************************************************************
#Encuentra las coordenadas 
crearDatosY <- function(b,nombre){
	datos <- read.csv(nombre, skip = 1)
	b <- datos$Y

return(b)
}

#******************************************************************
#Encuentra el numero de ciudades
crearDatosN <- function(c,nombre){

	linea <- readLines(nombre,n=1)
	c <- as.numeric(sub("Numero de ciudades: ","",linea))
return(c)
}

#*****************************************************************