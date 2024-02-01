extends Area2D

class_name BatmanBullet

@export var speed = 400
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta

		
func _on_area_entered(area):
	if area is Batmanenemy:
		Batmanscorecount.remove_enemy(10)
		Batmanscorecount.updatescore()
		area.queue_free()
