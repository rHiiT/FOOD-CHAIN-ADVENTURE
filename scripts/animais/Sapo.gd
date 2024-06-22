extends KinematicBody2D
onready var animation: AnimationPlayer = get_node("Animation")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("move")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		get_tree().change_scene("res://cenas/vs/vsSapo.tscn")
		print("Sapo")
