extends KinematicBody2D

onready var animation: AnimationPlayer = get_node("Animation")
var velocity: Vector2

export(int) var speed


func _physics_process(_delta: float) -> void:
	move()
	_escolha_skin()
	animate()
	
	
func move() -> void:
	var direction_vector: Vector2 = Vector2(
		Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
		Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	)
	if direction_vector.x != 0:
		direction_vector.y = 0
	else:
		direction_vector.x = 0
	#print(position.x,position.y)
	
	Global.player_posicao_x = position.x
	Global.player_posicao_y = position.y
	
	#print(direction_vector)
	
	velocity = direction_vector * speed
	velocity = move_and_slide(velocity)
	
	#print(velocity)
	
func animate() -> void:
	if velocity.x > 0:
		animation.play("direita")
	elif velocity.x < 0:
		animation.play("esquerda")
	elif velocity.y < 0:
		animation.play("cima")
	elif velocity.y > 0:
		animation.play("baixo")
	else:
		animation.play("RESET")
		
func _escolha_skin():
	if Global.menino_skin:
		$Sprite_boy.show()
		$Sprite_girl.hide()
	else:
		$Sprite_boy.hide()
		$Sprite_girl.show()
