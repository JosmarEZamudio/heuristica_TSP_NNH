crearDistancias <- function(a,b,n){
#a coordenadas de X
#b coordenadas de Y
#n numero de filas y columnas de la matriz
i = 1
j = 1
m <- matrix(0,nrow=n,ncol=n)
for(i in 1:n){
	for(j in 1:n){
		m[i,j] <- sqrt((a[i]-a[j])^2+(b[i]-b[j])^2)
		#m[i,j] <- 1
	}
}
	#print("Calculo terminado")
	#print(m)
	return(m) 
}

imprimirRedondo <- function (m){
	print(round(m,2))
}