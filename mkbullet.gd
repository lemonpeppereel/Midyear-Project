extends Area2D

class_name MKBullet

@export var speed = 400
var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.y += -speed * delta

func _on_area_entered(area):
	if area is Mkenemy:
		area.queue_free()
		Mkscorescount.remove_enemy(10)
		Mkscorescount.updatescore()
