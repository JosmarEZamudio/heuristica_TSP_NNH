eliminar <- function(b,n,matriz){
#b es el numero de fila y columna que sea desea eliminar
#n es el numero de ciudades
#matriz es la matriz de distancias con la que se trabaja	
i <- b
for(i in 1:n){
	matriz[i,b] <- 0
	matriz[b,i] <- 0
}
return(matriz) #retorna el valor y se copia en el original
}