extends Area2D

class_name HaloEnemy

@export var speed = 130

func _physics_process(delta):
	global_position.x += -speed * delta
	
func _on_area_entered(area):
	if area is Halobullet:
		area.queue_free()


