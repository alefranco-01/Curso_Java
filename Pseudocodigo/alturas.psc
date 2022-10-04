Algoritmo alturas
	
	masc <- 0;
	fem <- 0;
	
	alturamasc <- 0;
	alturamasc_total <- 0;
	alturafem <- 0;
	alturafem_total <- 0;
	acumuladorAltura <- 0;
	
	altmaxmujeres <- -9999;
	altminhombre <- 9999;
	
	cantpersona <- 0;
	contPersonas <- 0;
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "persona N°", i , ":";
		Escribir "Escribir su genero";
		Escribir  "-----1) MASCULINO-----"
		Escribir  "-----2) FEMENINO-----"
		Escribir  "Luego ingrese su altura"
		Leer genero, altura
		
		contPersonas <- contPersonas +1
		acumuladorAltura <- acumuladorAltura + altura
				
		Si genero == 1 Entonces
			
			masc <- masc +1;
			
			alturamasc_total <- alturamasc_total + altura
			
		FinSi
		
		Si genero == 2 Entonces
			
			fem <- fem +1;
			
			alturafem_total <- alturafem_total + altura
			
		FinSi		
		
		Si (altura < altminhombre) y genero == 1 Entonces
			
			altminhombre <- altura;
			
		FinSi
		
		Si (altura > altmaxmujeres) y genero == 2 Entonces
			
			altmaxmujeres <- altura;
			
		FinSi
		
		Si genero >=3	
			Escribir "Numero no valido"
			Escribir  "No se registro su altura"
		FinSi
		
	Fin Para	
	
	Escribir "Cantidad Total de personas con Genero Masculino", masc ;
	Escribir "Cantidad Total de personas con Genero Femenino",fem ;
	Escribir "Altura promedio de las personas" acumuladorAltura/contPersonas;
	Escribir "Altura promedio del genero Masculino" alturamasc_total/masc;
	Escribir "Altura promedio del genero Femenino" alturafem_total/fem;
	Escribir "Altura minima del genero Masculino" altminhombre;
	Escribir "Altura maxima del genero femenino" altmaxmujeres;
	
FinAlgoritmo
