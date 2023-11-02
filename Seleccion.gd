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


func _on_Atras_pressed():
	get_tree().change_scene('res://PantallaPrincipal.tscn')


func _on_SoyEstudiante_pressed():
	get_tree().change_scene('res://ElegirActividad.tscn')


func _on_SoyProfesor_pressed():
	get_tree().change_scene('res://Profesor.tscn')



func _on_SoyEstudiante_mouse_entered():
	$seleccion.play()


func _on_SoyProfesor_mouse_entered():
	$seleccion.play()
