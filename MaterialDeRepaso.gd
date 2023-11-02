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


func _on_Regresar_pressed():
	get_tree().change_scene('res://ElegirActividad.tscn')


func _on_PDF_pressed():
	OS.shell_open("https://drive.google.com/file/d/1ALKgS_wA4uBFk2Do2GsDSzn3pXUXPWHx/view?usp=sharing")


func _on_CPPS_pressed():
	OS.shell_open("http://www.ciap.org.ar/CPP/home.jsp")


func _on_CPPSVideo_pressed():
	OS.shell_open("https://youtu.be/rzYpuXX0L4k")


func _on_Ejercicios_pressed():
	OS.shell_open("https://docs.google.com/document/d/1TlwWggQphMrnueF2sSqEGLV0zC6RUi_82cKvAbgywdg/edit?usp=sharing")
