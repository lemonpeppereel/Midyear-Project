extends Area2D

class_name VenomBullet

@export var speed = 400

var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta

func _on_area_entered(area):
	if area is Carnage:
		area.queue_free()
		Venomscorecount.remove_enemy(10)
		Venomscorecount.updatescore()
