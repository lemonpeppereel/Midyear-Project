extends Area2D

class_name MKEnemy

@export var speed = 130

		
func _physics_process(delta):
	global_position.y += speed * delta
	
func _on_area_entered(area):
	if area is Mkbullet:
		area.queue_free()