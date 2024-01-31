extends Area2D

class_name RyuBullet

@export var speed = 400
	
func _physics_process(delta):
	global_position.x += speed * delta
