extends Node2D
var escolha = -1

var alvo = 2

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$layout/ACERTOU.hide()
	$layout/TENTE_NOVAMENTE.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	escolha = 1
	print(escolha)
	_verificar_escolha(escolha)
	
func _on_Button2_pressed():
	escolha = 2
	print(escolha)
	_verificar_escolha(escolha)
	
func _on_Button3_pressed():
	escolha = 3
	print(escolha)
	_verificar_escolha(escolha)
	
func _on_Button4_pressed():
	escolha = 4
	print(escolha)
	_verificar_escolha(escolha)
	

func _verificar_escolha(escolha):
	if (escolha > alvo) && (escolha < (alvo+2)):
		$layout/ACERTOU.show()
		$layout/TENTE_NOVAMENTE.hide()
		print("deu bom")
		get_tree().change_scene("res://cenas/LEVEL_MAP.tscn")
		Global.cont_cenas =+ 1
		print(Global.cont_cenas)
		Global.sapo = true
		Global.cont_pontos+=30
		
	else:
		$layout/ACERTOU.hide()
		$layout/TENTE_NOVAMENTE.show()
		print("deu ruim")
	
