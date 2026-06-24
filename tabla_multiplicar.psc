Algoritmo tabla_multiplicar
	Escribir "Dame el multiplicador:"
	Leer multiplicador
	Escribir "Desde 1 hasta ?:"
	Leer limite
	indice=1
	Escribir "Tabla de Multiplicar"
	Repetir
		Escribir multiplicador, "*",indice, "=	",multiplicador*indice
		indice=indice+1
	Hasta Que indice>limite
	Escribir "Tabla completada"
FinAlgoritmo