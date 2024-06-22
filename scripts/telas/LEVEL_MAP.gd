extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	Global._fim_de_jogo()
	if Global.cont_cenas > 0:
		$Player.position.x = Global.player_posicao_x
		$Player.position.y = Global.player_posicao_y
		if (Global.planta):
			$mobs/Planta.queue_free()
			Global.planta = false
		if (Global.grilo):
			$mobs/Grilo.queue_free()
			Global.grilo = false
		if (Global.sapo):
			$mobs/Sapo.queue_free()
			Global.sapo = false
		if (Global.cobra):
			$mobs/Cobra.queue_free()
			Global.cobra = false
		if (Global.falcao):
			$mobs/Falcao.queue_free()
			Global.falcao = false
		if (Global.planta_desert):
			$mobs/Planta_desert.queue_free()
			Global.planta_desert = false
		if (Global.grilo_desert):
			$mobs/Grilo_desert.queue_free()
			Global.grilo_desert = false
		if (Global.lagarto_desert):
			$mobs/Lagarto_desert.queue_free()
			Global.lagarto_desert = false
		if (Global.cobra_desert):
			$mobs/Cobra_desert.queue_free()
			Global.cobra_desert = false
		if (Global.falcao_desert):
			$mobs/Falcao_desert.queue_free()
			Global.falcao_desert = false
		if (Global.formiga_desert):
			$mobs/Formiga_desert.queue_free()
			Global.formiga_desert = false
		if (Global.rato_desert):
			$mobs/Rato_desert.queue_free()
			Global.rato_desert = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
