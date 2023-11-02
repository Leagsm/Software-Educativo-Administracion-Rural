extends Label




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	var minutos = int(get_node("Cronometro").get_time_left() / 60)
	var segundos = int(get_node("Cronometro").get_time_left()) % 60
	#set_text(str(get_node("Cronometro").get_time_left()))
	set_text(str(minutos) + ":" + str(segundos))

func _on_Cronometro_timeout():
	get_tree().change_scene('res://TiempoFinalizado.tscn')
