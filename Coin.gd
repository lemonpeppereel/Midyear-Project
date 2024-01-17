extends Area2D

@export var speed = 400
@onready var animationz = $AnimationPlayer
func _physics_process(delta):
	global_position.y += -speed * delta
	coinshot()
	
func coinshot():
	if Input.is_action_just_pressed("ui_up"):
		animationz.play("coinanimation")
