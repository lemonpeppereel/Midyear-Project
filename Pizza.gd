extends Area2D

@export var speed = 400
	
func _physics_process(delta):
	global_position.y += speed * -delta
		
func _on_area_entered(area):
	area.queue_free()
