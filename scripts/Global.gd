extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var menino_skin = false

var player_posicao_x
var player_posicao_y

var cont_cenas = 0

#mobs del
var planta = false
var grilo = false
var sapo = false
var cobra = false
var falcao = false
var planta_desert = false
var grilo_desert = false
var lagarto_desert = false
var formiga_desert = false
var cobra_desert = false
var falcao_desert = false
var rato_desert = false

#cont pontos

var cont_pontos = 0

# Called when the node enters the scene tree for the first time.

func _fim_de_jogo():
	if(Global.cont_pontos >= 350):
		get_tree().change_scene("res://cenas/Tela_Final.tscn")
		Global.cont_pontos = 0
		Global.cont_cenas = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
