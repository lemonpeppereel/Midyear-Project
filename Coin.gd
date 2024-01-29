extends Area2D

@export var speed = 400
@onready var animations = $Coinani
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta
	#coinshot()

#func coinshot():
	#if Input.is_action_just_pressed("ui_up"):
		#animations.play("coinanimation")
		
func _on_area_entered(area):
	if area is Koopatroopa:
		area.queue_free()
		Marioscorecount.add_score(10)
		Marioscorecount.updatescore()
