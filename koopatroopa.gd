extends Area2D

class_name Koopa

@export var speed = 130

func _physics_process(delta):
	global_position.y += speed * delta

func _on_area_entered(area):
	if area is Coin:
		area.queue_free()
	else:
		Marioscorecount.add_score(-10)
		Marioscorecount.updatescore()
		

