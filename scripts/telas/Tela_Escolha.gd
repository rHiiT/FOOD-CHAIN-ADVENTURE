extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_voltar_pressed():
	get_tree().change_scene("res://cenas/Tela_Inicial.tscn")


func _on_Selec_menino_pressed():
	get_tree().change_scene("res://cenas/LEVEL_MAP.tscn")
	Global.menino_skin = true


func _on_Selec_menina_pressed():
	get_tree().change_scene("res://cenas/LEVEL_MAP.tscn")
	Global.menino_skin = false
