minimoCiudad <- function(a,m){
#a es el numero de filas o columnas donde se buscara
#n es el numero de filas y columnas de la matriz
#m es la matriz

    if (any(m[a,]!=0)){
        resultado <- min(m[a,][m[a,]!=0])
        indice <- which(m[,a]!=0)[which.min(m[,a][m[,a]!=0])]
    return(indice)
    }

}

sumatoriaDistancia <- function(inicio,indice,m){
        n <- 0
        if(length(n) > 0 && n != 0){
        n <- m[inicio,indice]
        print(n)
        
        return(n)}
}
