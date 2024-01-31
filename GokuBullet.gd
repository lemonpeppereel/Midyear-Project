extends Area2D

@export var speed = 400

var screensize = Vector2(1152,640)

func _physics_process(delta):
	global_position.x += -speed * delta

func _on_area_entered(area):
		area.queue_free()
		Gokuscorecount.remove_enemy(10)
		Gokuscorecount.updatescore()
