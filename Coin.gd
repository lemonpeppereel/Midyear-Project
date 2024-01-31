extends Area2D

@export var speed = 400
@onready var animations3 = $Coinani
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta

		
func _on_area_entered(area):
	if area is Koopatroopa:
		area.queue_free()
		Marioscorecount.remove_enemy(10)
		Marioscorecount.updatescore()
