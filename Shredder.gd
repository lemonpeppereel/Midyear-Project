extends Area2D

class_name Shredder

@export var speed = 130

		
func _physics_process(delta):
	global_position.x += -speed * delta
	
	
	
func _on_area_entered(area):
	if area is tmntpizza:
		area.queue_free()
		
		

