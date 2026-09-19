heuristica <- function(nom,empezar){
    nombre <- nom
    X <- 0
    Y <- 0
    n <- 0 
#Llamar funciones de "cargardatos.R"
source("cargardatos.R")
X <- crearDatosX(X,nombre)
Y <- crearDatosY(Y,nombre)
n <- crearDatosN(n,nombre)

#crear matriz de distancias
matrizDistancias <- matrix(0,nrow=n,ncol=n)
matrizDistancias2 <- matrix(0,nrow=n,ncol=n)
source("matrizdistancia.R")
matrizDistancias <- crearDistancias(X,Y,n)
matrizDistancias2 <- matrizDistancias
#imprimirRedondo(matrizDistancias)

inicio <- empezar
ruta <- c(inicio)
b <- c(inicio)
sumatoria <- 0
a <- 0

while(a<=n){
    source("minimoporciudad.R")
    indice <- minimoCiudad(inicio,matrizDistancias)
      # s <- sumatoriaDistancia(inicio,indice,matrizDistancias)
      # print(s)
      # sumatoria <- sumatoria + s
    b <-c(b,inicio) 
    source("eliminacionciudad.R")
    matrizDistancias <- eliminar(inicio,n,matrizDistancias)
    inicio <- indice
    ruta <- c(ruta,indice)
    a <- a + 1
}

ruta <-c(ruta,empezar)
i<-1
for(i in 1:n+1){
        sumatoria <- sumatoria + matrizDistancias2[ruta[i],b[i]]
}

print("*********RESULTADOS**********")
print(paste("Distancia total a recorrer: ",round(sumatoria,2)))
print("Ruta a seguir: ")
print(ruta)
print(b)

source("graficacomponente.R")
nombre <- c(ruta)
grafica(X,Y,ruta,ruta)

}