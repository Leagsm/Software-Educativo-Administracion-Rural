extends Control

var pregunta_numero
var respuesta
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
		$Pregunta.text = "A partir de los siguientes resultados determinados con el programa costo de producción porcina simulación, tomando en consideración procedimientos de determinación de resultados económicos de actividades agropecuarias, cuál es el precio:"
		$Opcion1/Respuesta1.text = "918.351,0/20.910,0"
		$Opcion2/Respuesta2.text = "1.134.000,0/20.910,0"
		$Opcion3/Respuesta3.text = "215.649,0/20.910,0"
		$DialogoAyuda/Label2.text = "hola 1"
		$MadresAnual.text = "28"
		$MadresMensual.text = "28"
		$ProduccionAnual.text = "?"
		$ProduccionMensual.text = "?"
		$ProductividadAnual.text = "747,0"
		$ProductividadMensual.text = "62,2"
		$VentasAnual.text = "329,0"
		$VentasMensual.text = "27,4"
		$IngresosAnual.text = "1.134.000,0"
		$IngresosMensual.text = "94.500,0"
		$CostosAnual.text = "215.649,0"
		$CostosMensual.text = "17.970,8"
		$BeneficioAnual.text = "918.351,0"
		$BeneficioMensual.text = "76.529,2"
		$CapitalAnual.text = "2.093.640,0"
		$CapitalMensual.text = "2.093.640,0"
		$RentabilidadAnual.text = "43,9"
		$RentabilidadMensual.text = "3,7"
		
	
	if pregunta_numero == 1:
		$Pregunta.text = "A partir de los siguientes resultados determinados con el programa costo de producción porcina simulación,tomando en consideración procedimientos de determinación de resultados económicos de actividades, cuál de estos resultados expresa la tasa de rentabilidad:"
		$Opcion1/Respuesta1.text = "1.120.704,0/936.891,0"
		$Opcion2/Respuesta2.text = "183.813,0/936.891,0"
		$Opcion3/Respuesta3.text = "183.813,0/1.033.395,0"
		$DialogoAyuda/Label2.text = "hola 2"
		$MadresAnual.text = "44"
		$MadresMensual.text = "44"
		$ProduccionAnual.text = "87.308,0"
		$ProduccionMensual.text = "7.275,7"
		$ProductividadAnual.text = "1.984,0"
		$ProductividadMensual.text = "165,3"
		$VentasAnual.text = "765,0"
		$VentasMensual.text = "63,8"
		$IngresosAnual.text = "1.120.704,0"
		$IngresosMensual.text = "93.392,0"
		$CostosAnual.text = "936.891,0"
		$CostosMensual.text = "78.074,2"
		$BeneficioAnual.text = "183.813,0"
		$BeneficioMensual.text = "15.317,8"
		$CapitalAnual.text = "1.033.395,0"
		$CapitalMensual.text = "1.033.395,0"
		$RentabilidadAnual.text = "?"
		$RentabilidadMensual.text = "?"
	
	if pregunta_numero == 2:
		$Pregunta.text = "Si la actividad requiere un retiro por parte de sus propietarios de $ 50.000 mensuales, cuál de estos resultados correspondería a la variación patrimonial:"
		$Opcion1/Respuesta1.text = "16.641.409,0 - 50.000"
		$Opcion2/Respuesta2.text = "40.796.700,0 - 50.000"
		$Opcion3/Respuesta3.text = "16.641.409,0 - 50.000 * 12"
		$DialogoAyuda/Label2.text = "hola 3"
		$MadresAnual.text = "100"
		$MadresMensual.text = "100"
		$ProduccionAnual.text = "212.890,0"
		$ProduccionMensual.text = "17.740,8"
		$ProductividadAnual.text = "2.129,0"
		$ProductividadMensual.text = "177,4"
		$VentasAnual.text = "2.164,0"
		$VentasMensual.text = "180,3"
		$IngresosAnual.text = "40.796.700,0"
		$IngresosMensual.text = "3.399.725,0"
		$CostosAnual.text = "24.155.291,0"
		$CostosMensual.text = "2.012.940,9"
		$BeneficioAnual.text = "16.641.409,0"
		$BeneficioMensual.text = "1.386.784,1"
		$CapitalAnual.text = "18.540.949,0"
		$CapitalMensual.text = "18.540.949,0"
		$RentabilidadAnual.text = "89,8"
		$RentabilidadMensual.text = "7,5"

	if pregunta_numero == 3:
		$Pregunta.text = "A partir de los siguientes resultados determinados con el programa costo de producción porcina simulación, tomando en consideración procedimientos de determinación de resultados económicos de actividades agropecuarias, cuál de estos valores expresa el coto de producción:"
		$Opcion1/Respuesta1.text = "COSTO TOTAL/ PRODUCCION ANUAL"
		$Opcion2/Respuesta2.text = "INGRESO/PRODUCCIÓN INCORRECTO"
		$Opcion3/Respuesta3.text = "BENEFICIO/ PRODUCCION"
		$DialogoAyuda/Label2.text = "hola 4"
		$MadresAnual.text = "100"
		$MadresMensual.text = "100"
		$ProduccionAnual.text = "?"
		$ProduccionMensual.text = "?"
		$ProductividadAnual.text = "2.814,0"
		$ProductividadMensual.text = "234,5"
		$VentasAnual.text = "2.305,0"
		$VentasMensual.text = "192,1"
		$IngresosAnual.text = "4.572.951,0"
		$IngresosMensual.text = "381.079,2"
		$CostosAnual.text = "3.479.592,0"
		$CostosMensual.text = "289.966,0"
		$BeneficioAnual.text = "1.093.359,0"
		$BeneficioMensual.text = "91.113,2"
		$CapitalAnual.text = "16.796.963,0"
		$CapitalMensual.text = "16.796.963,0"
		$RentabilidadAnual.text = "6,5"
		$RentabilidadMensual.text = "0,5"

func responder():
	if pregunta_numero == 0:
		if respuesta == 1:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que los costos incluyen componenetes efectivos y no efectivos."
		if respuesta == 2:
			#puntaje += 2
			if uso_ayuda_antes == true:
				puntaje += 1
			else:
				puntaje += 2
			update_puntos()
			$Resultado.text = "Correcto!!. El costo es una expresion monetaria que incluye valor de lo consumido en un año como los gastos efectivos y valores no efectivos como amortizaciones y gastos no efectivos."
		if respuesta == 3:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que el costo no mide ganancias."

	if pregunta_numero == 1:
		if respuesta == 1:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que es una medida de resultado ecómica y no financiera."
		if respuesta == 2:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que faltarian descontar los costos."
		if respuesta == 3:
			#puntaje += 2
			if uso_ayuda_antes == true:
				puntaje += 1
			else:
				puntaje += 2
			update_puntos()
			$Resultado.text = "Correcto!!. Ya que el beneficio económico representa la ganancia o pérdida expresada en unidades monetarias que generaría una actividad luego de cubrir el valor económico de los insumos que se consuman en un año y la pérdida de valor de bienes durables."

	if pregunta_numero == 2:
		if respuesta == 1:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que representa la ganancia sobre los capitales utilizados."
		if respuesta == 2:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que es una medida de eficiencia económica."
		if respuesta == 3:
			#puntaje += 2
			if uso_ayuda_antes == true:
				puntaje += 1
			else:
				puntaje += 2
			update_puntos()
			$Resultado.text = "Correcto!!. Ya que relaciona el beneficio económico sobre el valor de los capitales utilizados."

	if pregunta_numero == 3:
		if respuesta == 1:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que la valoración que estima este programa no hace referencia a movimientos financieros."
		if respuesta == 2:
			#puntaje += 2
			if uso_ayuda_antes == true:
				puntaje += 1
			else:
				puntaje += 2
			update_puntos()
			$Resultado.text = "Correcto!!. Ya que toma en cuenta los activos de la empresa pertenecientes al productor y descuenta necesidades de endeudamiento."
		if respuesta == 3:
			update_puntos()
			$Resultado.text = "Incorecto!!. Por que faltaria descontar los endeudamientos."

func _on_Respuesta1_pressed():
	cont_veces += 1
	n += 1
	print("Cantidad de veces: ", cont_veces)
	if cont_veces < 4:
		respuesta = 1
		responder()
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
		preguntar()
	else:
		respuesta = 1
		responder()
		print("Puntos totales: ", puntaje)
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
		update_puntos()
		$PuntajeTotal.text = String(puntaje)
		$ColorRect9.visible = !$ColorRect9.visible
		$PuntajeFinalTexto.visible = !$PuntajeFinalTexto.visible
		$PuntajeTotal.visible = !$PuntajeTotal.visible
		$PuntajeMaximo.visible = !$PuntajeMaximo.visible
		$ColorRect7.visible = !$ColorRect7.visible
		$MensajeFinal.visible = !$MensajeFinal.visible
		$VerResultados.visible = !$VerResultados.visible

func _on_Respuesta2_pressed():
	cont_veces += 1
	n += 1
	print("Cantidad de veces: ", cont_veces)
	if cont_veces < 4:
		respuesta = 2
		responder()
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
		preguntar()
	else:
		respuesta = 2
		responder()
		print("Puntos totales: ", puntaje)
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
		update_puntos()
		$PuntajeTotal.text = String(puntaje)
		$ColorRect9.visible = !$ColorRect9.visible
		$PuntajeFinalTexto.visible = !$PuntajeFinalTexto.visible
		$PuntajeTotal.visible = !$PuntajeTotal.visible
		$PuntajeMaximo.visible = !$PuntajeMaximo.visible
		$ColorRect7.visible = !$ColorRect7.visible
		$MensajeFinal.visible = !$MensajeFinal.visible
		$VerResultados.visible = !$VerResultados.visible


func _on_Respuesta3_pressed():
	cont_veces += 1
	n += 1
	print("Cantidad de veces: ", cont_veces)
	if cont_veces < 4:
		respuesta = 3
		responder()
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
		preguntar()
	else:
		respuesta = 3
		responder()
		print("Puntos totales: ", puntaje)
		if uso_ayuda_antes == true:
			$DialogoAyuda.visible = !$DialogoAyuda.visible
			#$ColorRect4.visible = !$ColorRect4.visible
			#$Ayuda.visible = !$Ayuda.visible
			uso_ayuda_antes = false
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


func _on_Ayuda1_confirmed():
	uso_ayuda_antes = true
	print("Puntaje con Ayuda: ", puntaje)
	#$ColorRect4.visible = !$ColorRect4.visible
	#$Ayuda.visible = !$Ayuda.visible
	$DialogoAyuda.visible = !$DialogoAyuda.visible
	#if puntaje <= 0:
		#puntaje = puntaje
	#	uso_ayuda_antes = true
	#	print("Puntaje con Ayuda: ", puntaje)
	#	$ColorRect4.visible = !$ColorRect4.visible
	#	$Ayuda.visible = !$Ayuda.visible
	#else:
		#puntaje -= 1
	#	uso_ayuda_antes = true
	#	print("Puntaje con Ayuda: ", puntaje)
	#	$ColorRect4.visible = !$ColorRect4.visible
	#	$Ayuda.visible = !$Ayuda.visible


func _on_VerResultados_pressed():
	calcular_puntaje()

func calcular_puntaje():
	if puntaje >= 6:
		get_tree().change_scene('res://Aprobado.tscn')
	else:
		get_tree().change_scene('res://Desaprobado.tscn')

func update_puntos():
	$Puntos.text = String(puntaje)


func _on_DialogoAyuda_confirmed():
	uso_ayuda_antes = false
