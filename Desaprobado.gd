extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$desaprobado.play()


func _on_Regresar_pressed():
	get_tree().change_scene('res://ElegirActividad.tscn')


func _on_Referencia_pressed():
	get_tree().change_scene('res://MaterialDeRepaso.tscn')
