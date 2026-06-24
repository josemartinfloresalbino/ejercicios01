//AREA DE UN TRIANGULO
SubProceso AreaTriangulo
	Escribir "CALCULO DEL ÁREA DE UN TRIÁNGULO"
	Escribir "Altura:" Sin saltar 
	Leer altura
	Escribir "Base:" Sin saltar 
	Leer Base
	Escribir "ÁREA DEL TRIÁNGULO: " Altura*Base/2.0
	Escribir "Oprime cualquie tecla para continuar"
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

//TABLA DE MULTIPLICAR
subProceso TablaMultiplicar
	Escribir "TABLA DE MULTIPLICAR"
	Escribir "Dame el multiplicador:"
	Leer multiplicador
	indice=1
	Escribir "Tabla de Multiplicar del ", multiplicador
	Repetir
		Escribir multiplicador, "*",indice, "=	",multiplicador*indice
		indice=indice+1
	Hasta Que indice>10
	Escribir "TABLA COMPLETADA"
	Escribir "Oprime cualquie tecla para continuar"
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

//SERIE DE FIBONACII
SubProceso SerieFibonacci
	Escribir "Se generan N pares de la serie"
	Escribir "de FIBONACCI"
	Escribir "Dame cuantos pares quieres n(n>0)="
	Leer n
	Si n<1 Entonces
		Escribir "n debe ser mayor a 1"
		terminar<-1
	Fin Si
	
	V1<-1
	V2<-1
	Si n=1 Entonces
		Escribir V1
		Escribir V2
		terminar<-1
	FinSi
	
	Si n>1 Entonces
		Escribir "Inicia Secuencia de Fibonacci:"
		Escribir sin saltar V1 ", " V2 "; "
		Mientras indice<(n-1)
			V1<-V1+V2
			v2<-V1+V2
			Escribir sin saltar V1 ", " V2 "; "
			indice<-indice+1
		FinMientras
		terminar<-1
	FinSi
	
	Si terminar=1
		Escribir " "
		Escribir "FIN de programa."
	FinSi
	Escribir "Oprime cualquie tecla para continuar"
	Esperar Tecla
	Borrar Pantalla
FinSubProceso


//Función Factorial
Funcion factorial <- funFactorial ( num )
	Si num=0
		factorial<-1
	FinSi
	
	Si num>0
		factorial<-1
		i=2
		Mientras i<=num Hacer
			factorial=factorial*i
			i<-i+1
		Fin Mientras
	FinSi
Fin Funcion

//TRIANGULO DE PASCAL
SubProceso TrianguloPascal
	Escribir "Triángulo de Pascal"
	Escribir "Hasta que nivel N(N>=2)="
	Leer N
	
	Escribir "**** Triángulo de Pascal ******"
	indice1<-0
	Mientras indice1<=N Hacer
		indice2=0
		Mientras indice2<=(indice1) Hacer
			Escribir Sin saltar funFactorial(indice1)/(funFactorial(indice2)*funFactorial(indice1-indice2)) ","
			indice2=indice2+1
		Fin Mientras
		indice1=indice1+1
		Escribir "***(" (indice1-1) ")***"
	Fin Mientras
	Escribir "****** Fin del Algoritmo ******"
	Escribir "Oprime cualquie tecla para continuar"
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

//SUMA Y PROMEDIO DE UNA MATRIZ
SubProceso SumaPromedioMatriz
	// Definición de la Matriz
	Dimensionar Matriz(20,20)
	// Pedir Datos de Matriz
	Escribir 'DATOS DE MATRIZ'
	Escribir 'Presiona una tecla para continuar'Sin Saltar
	Leer key
	Escribir 'Número de FILAS:'Sin Saltar
	Leer NumFILAS
	Escribir 'Número de COLUMNAS: 'Sin Saltar
	Leer NumCOLUMNAS
	Para indice1<-1 Hasta NumFILAS Con Paso 1 Hacer
		Para indice2<-1 Hasta NumCOLUMNAS Con Paso 1 Hacer
			Escribir 'M[', indice1, ', ', indice2, ']='Sin Saltar
			Leer Matriz[indice1,indice2]
		FinPara
	FinPara
	Escribir '******* (A)'
	Escribir 'Presiona una tecla para continuar'Sin Saltar
	Leer key
	// Muestra Matriz
	Escribir 'La Matriz INGRESADA es:'
	Para indice1<-1 Hasta NumFILAS Con Paso 1 Hacer
		Para indice2<-1 Hasta NumCOLUMNAS Con Paso 1 Hacer
			Si indice2<NumCOLUMNAS Entonces
				Escribir 'M[', indice1, ', ', indice2, ']=', Matriz[indice1,indice2], ', 'Sin Saltar
			SiNo
				Escribir 'M[', indice1, ', ', indice2, ']=', Matriz[indice1,indice2]
			FinSi
		FinParaEscribir "Oprime cualquie tecla para continuar"
	FinPara
	Escribir '******* (B)'
	Escribir 'Presiona una tecla para continuar'Sin Saltar
	Leer key
	// sumar FILAS de la Matriz
	Escribir '>> SUMA POR FILAS'
	SUMA_TOTAL1 <- 0
	Para indice1<-1 Hasta NumFILAS Con Paso 1 Hacer
		suma <- 0
		Para indice2<-1 Hasta NumCOLUMNAS Con Paso 1 HacerEscribir "Oprime cualquie tecla para continuar"
			suma <- suma+Matriz[indice1,indice2]
		FinPara
		Escribir '>> Suma Fila [', indice1, ']= 'Sin Saltar
		Escribir suma
		SUMA_TOTAL1 <- SUMA_TOTAL1+suma
	FinPara
	Escribir '>> La suma de todas las filas es:', SUMA_TOTAL1
	Escribir '******* (C)'
	Leer key
	// sumar FILAS de la Matriz
	Escribir 'Presiona una tecla para continuar'Sin Saltar
	Escribir '>>>> SUMA POR COLUMNAS'
	SUMA_TOTAL2 <- 0
	Para indice1<-1 Hasta NumCOLUMNAS Con Paso 1 Hacer
		suma <- 0
		Para indice2<-1 Hasta NumFILAS Con Paso 1 Hacer
			suma <- suma+Matriz[indice2,indice1]
		FinPara
		Escribir 'Suma COL[', indice1, ']= ', suma, ', 'Sin Saltar
		SUMA_TOTAL2 <- SUMA_TOTAL2+suma
	FinPara
	Escribir ':'
	Escribir 'La suma de todas las COLUMNAS es:', SUMA_TOTAL2
	Escribir '******* (D)'
	Escribir 'Presiona una tecla para continuar'Sin Saltar
	Leer key
	// COMPROBACIÓN Y CALCULO DE PROMEDIO
	Si SUMA_TOTAL1<>SUMA_TOTAL2 Entonces
		// COMPARA PARA DETECTAR ERROR EN SUMAS
		Escribir 'ERROR en el cálculo de la suma!!!'
	SiNo
		// CALCULO PROMEDIO
		Escribir 'PROMEDIO ES= ', SUMA_TOTAL1/(NumCOLUMNAS*NumFILAS)
	FinSi
	Escribir "Oprime cualquie tecla para continuar"
	Esperar Tecla
	Borrar Pantalla
FinSubProceso

//MENÚ DE APLICACIONES
SubProceso Menu
	Escribir " "
	Escribir "SELECCIONA el algoritmo que deseas probar"
	Escribir "a) Área de un triángulo."
	Escribir "b) Tabla de multipEsclicar"Escribir "Oprime cualquie tecla para continuar"
	Escribir "c) Serie de Fibonacci"
	Escribir "d) Triángulo de Pascal"
	Escribir "e) Suma y Promedio de una matriz"
	Escribir "Cuálquier tecla para SALIR"
	Escribir " "
	Escribir "Tu SELECCIÓN ES: " Sin Saltar
FinSubProceso

//PROGRAMA PRINCIPAL
Proceso Aplicaciones
	Definir opcion Como Caracter
	
	Repetir
		Menu
		Leer opcion
		Limpiar Pantalla;
		
		Segun opcion Hacer
			'a':
				AreaTriangulo
			'b':
				TablaMultiplicar
			'c':
				SerieFibonacci
			'd':
				TrianguloPascal
			'e':
				Imprimir "Opción:", opción
				SumaPromedioMatriz
			De Otro Modo:
				Imprimir "Finalización"
		Fin Segun
	Hasta Que (opcion>'e')
FinProceso
	