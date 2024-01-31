extends Area2D

class_name Zangief
@export var speed = 130
		
func _physics_process(delta):
	global_position.y += speed * delta
	
func _on_area_entered(area):
	area.queue_free()
		
		

