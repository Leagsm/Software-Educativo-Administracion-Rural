extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AcercaDe_pressed():
	get_tree().change_scene('res://AcercaDe.tscn')


func _on_BotonSalir_mouse_entered():
	$salir.play()

func _on_BotonInstrucciones_mouse_entered():
	$seleccion.play()


func _on_BotonJugar_mouse_entered():
	$seleccion.play()


func _on_AcercaDe_mouse_entered():
	$seleccion.play()


func _on_Salir_button_up():
	get_tree().quit()


func _on_Salir_mouse_entered():
	$salir.play()
