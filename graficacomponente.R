grafica <- function(a,b,c,d){
	plot(a[c], b[c],
     		type = "o",
     		pch = 19,
     		xlab = "Coordinate X",
     		ylab = "Coordinate Y",
     		main = "Obteined Route")

	text(a[c], b[c], labels = paste("City", d), pos = 3)

}