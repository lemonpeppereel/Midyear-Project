extends Area2D

class_name Pizza

@export var speed = 400
	
func _physics_process(delta):
	global_position.x += speed * delta
		
func _on_area_entered(area):
	if area is Shredder:
		area.queue_free()
		Tmntscorecount.remove_enemy(10)
		Tmntscorecount.updatescore()
