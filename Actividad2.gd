extends Control

var pregunta_numero
var cont_veces = 0
var puntaje = 0
var uso_ayuda_antes = false
var lista = [0,1,2,3]
var n = 0

func _ready():
	randomize()
	lista.shuffle()
	update_puntos()
	preguntar()

func preguntar():
	#pregunta_numero = randi() % 4
	pregunta_numero = lista[n]
	
	print("PUNTAJE: ", puntaje)
	
	if pregunta_numero == 0:
		$Actividad.text = "Calcule el beneficio económico anual:"
		$Operador.text = "-"
		$Igualdad.text = "="
		$AyudaDato1.text = "Ingresos"
		$AyudaDato2.text = "?"
		$AyudaResultado.text = "Beneficio"
		$MadresAnual.text = "44"
		$MadresMensual.text = "44"
		$ProduccionAnual.text = "80.505,0"
		$ProduccionMensual.text = "6.708,8"
		$ProductividadAnual.text = "1.830,0"
		$ProductividadMensual.text = "152,5"
		$VentasAnual.text = "749,0"
		$VentasMensual.text = "62,4"
		$IngresosAnual.text = "1.266.240,0"
		$IngresosMensual.text = "105.520,0"
		$CostosAnual.text = "706.819,0"
		$CostosMensual.text = "58.901,6"
		$BeneficioAnual.text = "?"
		$BeneficioMensual.text = "?"
		$CapitalAnual.text = "909.254,0"
		$CapitalMensual.text = "909.254,0"
		$RentabilidadAnual.text = "61,5"
		$RentabilidadMensual.text = "5,1"
		
		
	if pregunta_numero == 1:
		$Actividad.text = "Calcule el Capital propio invertido mensual:"
		$Operador.text = "/"
		$Igualdad.text = "="
		$AyudaDato1.text = "?"
		$AyudaDato2.text = "Rentabilidad"
		$AyudaResultado.text = "Capital"
		$MadresAnual.text = "160"
		$MadresMensual.text = "160"
		$ProduccionAnual.text = "472.450,0"
		$ProduccionMensual.text = "39.370,8"
		$ProductividadAnual.text = "2.953,0"
		$ProductividadMensual.text = "246,1"
		$VentasAnual.text = "4.199,0"
		$VentasMensual.text = "349,9"
		$IngresosAnual.text = "4.560.490,0"
		$IngresosMensual.text = "380.040,8"
		$CostosAnual.text = "3.096.855,0"
		$CostosMensual.text = "258.071,2"
		$BeneficioAnual.text = "1.463.635,0"
		$BeneficioMensual.text = "121.969,6"
		$CapitalAnual.text = "?"
		$CapitalMensual.text = "?"
		$RentabilidadAnual.text = "22,0"
		$RentabilidadMensual.text = "1,8"
		
		
	if pregunta_numero == 2:
		$Actividad.text = "Calcule la productividad anual:"
		$Operador.text = "/"
		$Igualdad.text = "="
		$AyudaDato1.text = "Producción"
		$AyudaDato2.text = "?"
		$AyudaResultado.text = "Productividad"
		$MadresAnual.text = "100,0"
		$MadresMensual.text = "100,0"
		$ProduccionAnual.text = "202.930,0"
		$ProduccionMensual.text = "16.910,8"
		$ProductividadAnual.text = "?"
		$ProductividadMensual.text = "?"
		$VentasAnual.text = "1.819,0"
		$VentasMensual.text = "151,6"
		$IngresosAnual.text = "2.600.090,0"
		$IngresosMensual.text = "216.674,2"
		$CostosAnual.text = "2.060.155,0"
		$CostosMensual.text = "171.679,6"
		$BeneficioAnual.text = "539.935,0"
		$BeneficioMensual.text = "44.994,6"
		$CapitalAnual.text = "1.915.058,0"
		$CapitalMensual.text = "1.915.058,0"
		$RentabilidadAnual.text = "28,2"
		$RentabilidadMensual.text = "2,3"
		
	if pregunta_numero == 3:
		$Actividad.text = "Calcule la rentabilidad mensual:"
		$Operador.text = "/"
		$Igualdad.text = "="
		$AyudaDato1.text = "?"
		$AyudaDato2.text = "Capital"
		$AyudaResultado.text = "Rentabilidad"
		$MadresAnual.text = "50"
		$MadresMensual.text = "50"
		$ProduccionAnual.text = "98.750,0"
		$ProduccionMensual.text = "8.229,2"
		$ProductividadAnual.text = "1975,0"
		$ProductividadMensual.text = "164,6"
		$VentasAnual.text = "926,0"
		$VentasMensual.text = "77,2"
		$IngresosAnual.text = "828.175,0"
		$IngresosMensual.text = "69.014,6"
		$CostosAnual.text = "522.172,0"
		$CostosMensual.text = "43.514,3"
		$BeneficioAnual.text = "306.003,0"
		$BeneficioMensual.text = "25.500,2"
		$CapitalAnual.text = "758.881,0"
		$CapitalMensual.text = "758.881,0"
		$RentabilidadAnual.text = "?"
		$RentabilidadMensual.text = "?"


func responder():
	if pregunta_numero == 0:
		var a = float($Dato1.text)
		var b = float($Dato2.text)
		var c = float($Resultado.text)
		var d = float(0.0)
		if float(a and b and c) != d:
			if ((a - b) == c) and (c == 559421.0):
				if uso_ayuda_antes == true:
					puntaje += 1
				else:
					puntaje += 2
				#puntaje += 2
				update_puntos()
				$Respuesta.text = "Correcto!!!. El cálculo de beneficio económico es la diferencia entre Ingresos y Costos."
			else:
				update_puntos()
				$Respuesta.text = "Incorreco!!. Recordá que el cálculo de beneficio económico es la diferencia entre Ingresos y..."
		else:
			update_puntos()
			$Respuesta.text = "Error!!!...Faltan datos a ingresar."

	
	if pregunta_numero == 1:
		var a = float($Dato1.text)
		var b = float($Dato2.text)
		var c = float($Resultado.text)
		var d = float(0.0)
		if float(a and b and c) != d:
			#15317.8 / 1.5 = 10211.866667
			if (a == 121967.6) and (b == 1.8) and (c == 67759.7):
				if uso_ayuda_antes == true:
					puntaje += 1
				else:
					puntaje += 2
				#puntaje += 2
				update_puntos()
				$Respuesta.text = "Correcto!!!. El cálculo de Capital invertido es la división entre el Beneficio Económico y la Rentabilidad."
			else:
				update_puntos()
				$Respuesta.text = "Incorreco!!. Recordá que el cálculo de capital invertido es la división entre el Beneficio Económico y..."
		else:
			update_puntos()
			$Respuesta.text = "Error!!!...Faltan datos a ingresar."


	if pregunta_numero == 2:
		var a = float($Dato1.text)
		var b = float($Dato2.text)
		var c = float($Resultado.text)
		var d = float(0.0)
		if float(a and b and c) != d:
			if (a == 202930.0) and (b == 100.0) and (c == 2029.3):
				if uso_ayuda_antes == true:
					puntaje += 1
				else:
					puntaje += 2
				#puntaje += 2
				update_puntos()
				$Respuesta.text = "Correcto!!!. El cálculo de Productividad es la división entre la Producción y la cantidad de Madres."
			else:
				print("a: ", a, "b: ", b, "c: ", a/b)
				update_puntos()
				$Respuesta.text = "Incorreco!!. Recordá que el cálculo de Productividad es la división entre la Producció y..."
		else:
			update_puntos()
			$Respuesta.text = "Error!!!...Faltan datos a ingresar."
			
			
	if pregunta_numero == 3:
		var a = float($Dato1.text)
		var b = float($Dato2.text)
		var c = float($Resultado.text)
		var d = float(0.0)
		if float(a and b and c) != d:
			if (a == 25500.2) and (b == 758881.0) and (c == 0.003):
				if uso_ayuda_antes == true:
					puntaje += 1
				else:
					puntaje += 2
				update_puntos()
				$Respuesta.text = "Correcto!!!. El cálculo de  es la división entre el Beneficio Económico y el Capital propio invertido."
			else:
				print("a: ", a, "b: ", b, "c: ", a/b)
				update_puntos()
				$Respuesta.text = "Incorreco!!. Recordá que el cálculo de Rentabilidad es la división entre el Beneficio Económico y..."
		else:
			update_puntos()
			$Respuesta.text = "Error!!!...Faltan datos a ingresar."


func _on_Validar_pressed():
	var a = float($Dato1.text)
	var b = float($Dato2.text)
	var c = float($Resultado.text)
	var d = float(0.0)
	if float(a and b and c) == d:
		responder()
		puntaje = puntaje
		n = n
		preguntar()
	else:
		cont_veces += 1
		n += 1
		print("Cantidad de veces: ", cont_veces)
		if cont_veces < 4:
			responder()
			if uso_ayuda_antes == true:
				$AyudaDato1.visible = !$AyudaDato1.visible
				$AyudaDato2.visible = !$AyudaDato2.visible
				$AyudaResultado.visible = !$AyudaResultado.visible
				uso_ayuda_antes = false
			
			preguntar()
		else:
			responder()
			print("Puntos totales: ", puntaje)
			update_puntos()
			$PuntajeTotal.text = String(puntaje)
			$ColorRect9.visible = !$ColorRect9.visible
			$PuntajeFinalTexto.visible = !$PuntajeFinalTexto.visible
			$PuntajeTotal.visible = !$PuntajeTotal.visible
			$PuntajeMaximo.visible = !$PuntajeMaximo.visible
			$ColorRect7.visible = !$ColorRect7.visible
			$MensajeFinal.visible = !$MensajeFinal.visible
			$VerResultados.visible = !$VerResultados.visible

func _on_Atras_pressed():
	get_tree().change_scene('res://ElegirActividad.tscn')


func _on_Ayuda2_confirmed():
	update_puntos()
	uso_ayuda_antes = true
	print("Puntaje con Ayuda: ", puntaje)
	$AyudaDato1.visible = !$AyudaDato1.visible
	$AyudaDato2.visible = !$AyudaDato2.visible
	$AyudaResultado.visible = !$AyudaResultado.visible
	#if puntaje <= 0:
	#	puntaje = puntaje
	#	update_puntos()
	#	uso_ayuda_antes = true
	#	print("Puntaje con Ayuda: ", puntaje)
	#	$AyudaDato1.visible = !$AyudaDato1.visible
	#	$AyudaDato2.visible = !$AyudaDato2.visible
	#	$AyudaResultado.visible = !$AyudaResultado.visible
	#else:
	#	puntaje -= 1
	#	update_puntos()
	#	uso_ayuda_antes = true
	#	print("Puntaje con Ayuda: ", puntaje)
	#	$AyudaDato1.visible = !$AyudaDato1.visible
	#	$AyudaDato2.visible = !$AyudaDato2.visible
	#	$AyudaResultado.visible = !$AyudaResultado.visible

func calcular_puntaje():
	if puntaje >= 6:
		get_tree().change_scene('res://Aprobado.tscn')
	else:
		get_tree().change_scene('res://Desaprobado.tscn')


func _on_VerResultados_pressed():
	calcular_puntaje()

func update_puntos():
	$Puntos.text = String(puntaje)
