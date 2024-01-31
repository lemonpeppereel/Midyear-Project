extends Area2D

class_name Koopa
@onready var animations4 = $kfall
@export var speed = 130

func koopafall():
	animations4.play("koopafall")
		
func _physics_process(delta):
	global_position.y += speed * delta
	
func _on_area_entered(area):
	if area is Coin:
		koopafall()
		area.queue_free()
	else:
		Marioscorecount.remove_enemy(-10)
		Marioscorecount.updatescore()
