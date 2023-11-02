extends Control

export (NodePath) var dropdown_path
onready var dropdown = get_node(dropdown_path)


func _ready():
	add_items()

func add_items():
	dropdown.add_item("-")
	dropdown.add_item("/")

func _on_Atras_pressed():
	get_tree().change_scene('res://SeleccionarPreguntaACargar.tscn')



func _on_ConfirmarCalculo_confirmed():
	$SeCargo.visible = !$SeCargo.visible
