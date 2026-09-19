*****************************HEURISTICA EN R************************************
Importante, es una heurística relativamente sencilla, funciona de la siguiente manera:

**IMPORTANTE: Trabaja solo con archivos del tipo ".csv"
**IMPORTANTE: Primero, si descargaste este modesto simulador, en una consola de R, localizar la carpeta o el lugar donde se quiera trabajar y establecer dirección de trabajo.**

> setwd("direccion/ejemplo/heuristica_TSP_NNH")

Después, crear una variable con el nombre del archivo donde estén tus coordenadas, se recomienda que el archivo sea de la forma: primera línea el numero de ciudades (cabecera), segunda línea nombre de las columnas, lo restante son los datos, checa este ejemplo: 

Numero de ciudades: 8
X,Y
86,37
17,94

**NOTA: este no es un generador, puedes crearlo por ti mismo en cualquier otro lenguaje (C es muy fácil, java, Python, en el mismo R, etc.).**
Otra variable a declarar, es en la ciudad que quieres empezar, si ya sabes el numero de tus ciudades, lógicamente ingresa una que este en ese rango. 
Entonces tendremos: 

> nombre <- "ciudades.csv"
> inicio <- 7 

Para llamar a la función es muy sencillo, primero llamar al script: 

> source("principal.R") 

Y ejecutar la función a la cual le pasaremos los parámetros nombre e inicio, en ese orden. 

> heurística(nombre,inicio)

Seria todo, dependiendo de tu números de ciudades será la espera de resultado(por lo general en datos muy grandes de varios millones para arriba). 

Al finalizar indicara la ruta optima al igual que la distancia recorrida, también de manera automática se graficará la ruta, enseñando el recorrido que se hace. 

**Por ahora no cuenta con salida con un archivo .csv, se agregará despues. **

Adios. 
JEZJ. 