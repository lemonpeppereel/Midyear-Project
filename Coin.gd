extends Area2D

@export var speed = 400
@onready var animations = $Coinani
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta
	#coinshot()

func coinshot():
	if Input.is_action_just_pressed("ui_up"):
		animations.play("coinanimation")
		
func _on_area_entered(area):
	Marioscorecount.remove_enemy(10)
	Marioscorecount.updatescore()
	area.queue_free()
