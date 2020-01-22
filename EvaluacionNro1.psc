funcion prom <- secuencial(n1,n2,n3)
	escribir "Ingrese 3 numeros, el programa mostrará el promedio"
	leer n1
	leer n2
	leer n3
	prom= (n1+n2+n3)/3
	escribir "El promedio es de " Sin Saltar
FinFuncion

funcion ba <- sientonces(nom,gen)
	escribir "Ingrese Nombre"
	leer nom
	escribir "Ingrese genero: 1 para hombre y 2 para mujer"
	leer gen
	si gen==1 entonces
		escribir "El baño asignado para ",nom," es el de hombres"
	FinSi
	si gen==2 Entonces
		escribir "El baño asignado para ",nom," es el de mujeres"
	FinSi	
FinFuncion

funcion bauso <- sientoncesanidado(nom,gen,uso)
	escribir "Ingrese Nombre"
	leer nom
	escribir "Ingrese genero: 1 para hombre y 2 para mujer"
	leer gen
	si gen==1 entonces
		escribir "El baño asignado para ",nom," es el de hombres"
		escribir "Si desea utilizar el WC ingrese 1, si desea utilizar la DUCHA ingrese 2"
		leer uso
		si uso==1 Entonces
			Escribir "El valor a pagar es de $250"
		FinSi
		si uso==2 Entonces
			escribir "El valor a pagar es de $2500"
		FinSi
	FinSi
	si gen==2 Entonces
		escribir "El baño asignado para ",nom," es el de mujeres"
		escribir "Si desea utilizar el WC ingrese 1, si desea utilizar la DUCHA ingrese 2"
		leer uso
		si uso==1 Entonces
			Escribir "El valor a pagar es de $250"
		FinSi
		si uso==2 Entonces
			escribir "El valor a pagar es de $2500"
		FinSi
	FinSi	
FinFuncion

funcion numapal <- condicionalsegun(n)
	escribir "Ingrese un numero del 1 al 10"
	leer n
	segun n hacer
		1: numapal="Uno"
		2: numapal="Dos"
		3: numapal="Tres"
		4: numapal="Cuatro"
		5: numapal="Cinco"
		6: numapal="Seis"
		7: numapal="Siete"
		8: numapal="Ocho"
		9: numapal="Nueve"
		10: numapal="Diez"
		De Otro Modo:
			escribir "Numero no valido. Ingrese un numero del 1 al 10"
			escribir condicionalsegun(n)
	FinSegun
FinFuncion

funcion xnum <- repetitivamientras(n,c,p)
	escribir "Ingrese un numero distinto de 0, para terminar ingrese un 0"
	leer n
	mientras n<>0
		p=p+n
		c=c+1
		escribir "Ingrese un numero"
		leer n
	FinMientras
	escribir "Se ingresaron ",c," numeros y su promedio es ",p/c
FinFuncion

funcion c <- repetitivarepetir(nom)
	escribir "Este programa se detendra cuando se ingrese el nombre *Juan*"
	Repetir
		Escribir "Ingrese un nombre"
		leer nom
		c=c+1
	Hasta Que nom=="Juan" | nom=="juan" | nom=="JUAN"
	escribir "Se realizaron los siguientes intentos: "
FinFuncion

funcion rep <- repetitivapara(nom,c)
	definir list, rep como caracter
	Dimension list[10]
	para i=0 hasta 9 hacer
		escribir "Ingrese el nombre numero ",i+1
		leer nom
		list[i]=nom
	FinPara
	n=0
	v=0
	para j=0 hasta 9
		nom=list[j]
		c=0
		para i=n hasta 9 hacer
			si list[i]<>" " entonces
				si nom==list[i] entonces
					c=c+1
					list[i]=" "
				finsi
			finsi
		FinPara	
		si c>1 entonces
			escribir nom," se repite ",c," veces"
			v=1
		finsi
		n=n+1
	finpara
	si v==0 Entonces
		escribir "No se repitió ningun nombre"
	FinSi
FinFuncion

funcion imp <- arreglosimple(n)
	definir nom, ingreso Como Caracter
	escribir "Ingrese la cantidad de alumnos"
	leer n
	Dimension nom[n]
	para i=0 hasta n-1 Hacer
		Escribir "Ingrese el nombre del alumno nro. ",i+1
		leer ingreso
		nom[i]= ingreso
	FinPara
	Escribir "La lista de alumnos ingresada es la siguiente"
	c=1
	para i=0 hasta n-1 hacer
		si c<=5 entonces
			escribir nom[i]," " sin saltar
			c=c+1
		SiNo
			escribir " "
			c=0
		finsi	
	FinPara
FinFuncion

Funcion dat <- arreglobidireccional(n)
	definir alu, ingreso Como Caracter
	escribir "Ingrese la cantidad de alumnos"
	leer n
	Dimension alu[n,4]
	para i=0 hasta n-1 Hacer
		Escribir "Ingrese el nombre del/a alumno/a nro. ",i+1
		leer ingreso
		alu[i,0]= ingreso
		escribir "Ingrese el apellido del/a alumno/a nro. ",i+1
		leer ingreso
		alu[i,1]= ingreso
		escribir "Ingrese el telefono del/a alumno/a nro. ",i+1
		leer ingreso
		alu[i,2]= ingreso
		escribir "Ingrese el e-mail del/a alumno/a nro. ",i+1
		leer ingreso
		alu[i,3]= ingreso
	FinPara
	Escribir "La lista de alumnos ingresada es la siguiente"
	para i=0 hasta n-1 hacer
			escribir "NOMBRE: ",alu[i,0]," ",alu[i,1]," TELEFONO: ",alu[i,2]," EMAIL: ",alu[i,3]
	FinPara
FinFuncion

	

algoritmo listafunciones
	definir op como entero
	escribir "Seleccione su funcion"
	escribir "1.Secuencial:"
	escribir "2.Condicional si entonces:"
	escribir "3.Condicional si entonces anidado:"
	escribir "4.Condicional segun:"
	escribir "5.Repetitiva Mientras"
	escribir "6.Repetitiva Repetir"
	escribir "7.Repetitiva Para"
	escribir "8.Arreglo Simple"
	escribir "9.Arreglo Bidimencional"
	escribir "10.SALIR"
	
	leer op
	mientras op<1 | op>10
		escribir "Opcion no valida, intentelo otra vez"
		leer op
	FinMientras
	
	segun op hacer
		1: escribir secuencial(n1,n2,n3)
		2: escribir sientonces(nom,gen)
		3: escribir sientoncesanidado(nom,gen,uso)
		4: escribir condicionalsegun(n)
		5: escribir repetitivamientras(n,c,p)
		6: escribir repetitivarepetir(nom)
		7: escribir repetitivapara(nom,c)
		8: escribir arreglosimple(n)
		9: escribir arreglobidireccional(n)
		10: escribir "Saliendo del programa"
	FinSegun
	
FinAlgoritmo
