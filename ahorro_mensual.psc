Algoritmo ahorro_mensual
	Definir opcion, totalAhorros Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir encontrado Como Logico
	Definir siguienteID Como Entero
	Dimension id[100]
	Dimension mes[100]
	Dimension anio[100]
	Dimension monto[100]
	Dimension meta[100]
	Dimension metodo[100]
	Dimension descripcion[100]
	Dimension estado[100]
	totalAhorros <- 0
	siguienteID <- 1
	//--------------------------------------//
	//--|menu_principal_de_ahorro_mensual|--//
	//--------------------------------------//
	Repetir
		Escribir "menu principal de ahorro mensual"
		Escribir "1) registrar ahorro"
		Escribir "2) editar ahorro"
		Escribir "3) eliminar ahorro"
		Escribir "4) buscar ahorro"
		Escribir "5) listar ahorros"
		Escribir "6) ver detalles del ahorro"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_ahorro|--//
			//----------------------//
			1:
				Escribir "registrar ahorro mensual"
				id[totalAhorros + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAhorros + 1]
				Escribir "ingrese el mes:"
				Leer mes[totalAhorros + 1]
				Escribir "ingrese el año:"
				Leer anio[totalAhorros + 1]
				Escribir "ingrese el monto:"
				Leer monto[totalAhorros + 1]
				Escribir "ingrese la meta:"
				Leer meta[totalAhorros + 1]
				Escribir "ingrese el método:"
				Leer metodo[totalAhorros + 1]
				Escribir "ingrese la descripción:"
				Leer descripcion[totalAhorros + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAhorros + 1]
				totalAhorros <- totalAhorros + 1
				Escribir "ahorro registrado correctamente."
			//-------------------//
			//--|editar_ahorro|--//
			//-------------------//
			2:
				Escribir "editar ahorro mensual"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", mes[i], " | ", anio[i], " | ", monto[i], " | ", meta[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ahorro mensual:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo mes:"
							Leer mes[i]
							Escribir "ingrese el nuevo año:"
							Leer anio[i]
							Escribir "ingrese el nuevo monto:"
							Leer monto[i]
							Escribir "ingrese la nueva meta:"
							Leer meta[i]
							Escribir "ingrese el nuevo método:"
							Leer metodo[i]
							Escribir "ingrese la nueva descripción:"
							Leer descripcion[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "ahorro mensual editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro mensual con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_ahorro|--//
			//---------------------//
			3:
				Escribir "eliminar ahorro mensual"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", mes[i], " | ", anio[i], " | ", monto[i], " | ", meta[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del ahorro mensual:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAhorros Entonces
								Para j <- i Hasta totalAhorros - 1 Hacer
									id[j] <- id[j + 1]
									mes[j] <- mes[j + 1]
									anio[j] <- anio[j + 1]
									monto[j] <- monto[j + 1]
									meta[j] <- meta[j + 1]
									metodo[j] <- metodo[j + 1]
									descripcion[j] <- descripcion[j + 1]
									estado[j] <- estado[j + 1]
								FinPara
							FinSi
							totalAhorros <- totalAhorros - 1
							Escribir "ahorro mensual eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro mensual con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_ahorro|--//
			//-------------------//
			4:
				Escribir "buscar ahorro mensual"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros mensuales registrados."
				SiNo
					Escribir "ingrese el id del ahorro mensual:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos registrados encontrado"
							Escribir id[i], " | ", mes[i], " | ", anio[i], " | ", monto[i], " | ", meta[i], " | ", metodo[i], " | ", descripcion[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro mensual con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_ahorro|--//
			//--------------------//
			5:
				Escribir "listar ahorro mensual"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAhorros Hacer
						Escribir id[i], " | ", mes[i], " | ", anio[i], " | ", monto[i], " | ", meta[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_del_ahorro|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del ahorro mensual"
				Si totalAhorros = 0 Entonces
					Escribir "no hay ahorros mensuales registrados."
				SiNo
					Escribir "ingrese el id del ahorro mensual:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAhorros Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del ahorro mensual"
							Escribir "id: ", id[i]
							Escribir "mes: ", mes[i]
							Escribir "año: ", anio[i]
							Escribir "monto: ", monto[i]
							Escribir "meta: ", meta[i]
							Escribir "método: ", metodo[i]
							Escribir "descripción: ", descripcion[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un ahorro mensual con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//				
			7:
				Escribir "gracias por utilizar ahorro mensual."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo