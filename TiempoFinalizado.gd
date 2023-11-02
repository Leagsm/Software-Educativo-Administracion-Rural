extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$fuego.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Regresar_pressed():
	get_tree().change_scene('res://ElegirActividad.tscn')


func _on_Referencia_pressed():
	get_tree().change_scene('res://MaterialDeRepaso.tscn')
