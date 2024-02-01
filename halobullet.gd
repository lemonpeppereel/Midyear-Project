extends Area2D

class_name HaloBullet

@export var speed = 400
	
func _physics_process(delta):
	global_position.x += speed * delta
		
func _on_area_entered(area):
	if area is Haloenemy:
		area.queue_free()
		Haloscorecount.remove_enemy(10)
		Haloscorecount.updatescore()
