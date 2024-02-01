extends Area2D

class_name GOWBullet

@export var speed = 400
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta

		
func _on_area_entered(area):
	if area is minotaur:
		area.queue_free()
		Gowscorecount.remove_enemy(10)
		Gowscorecount.updatescore()
