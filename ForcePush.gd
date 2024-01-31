extends Area2D

class_name Force

@export var speed = 400
	
func _physics_process(delta):
	global_position.y += -speed * delta
		
func _on_area_entered(area):
	if area is fighterjet:
		area.queue_free()
		StarWarsScoreCount.remove_enemy(10)
		StarWarsScoreCount.updatescore()
