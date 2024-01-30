extends Area2D

class_name Koopa
@onready var Animationsk = $koopafall
@export var speed = 130

func _physics_process(delta):
	global_position.y += speed * delta
	koopafall()
	
func koopafall():
	if Input.is_action_just_pressed("ui_up"):
		Animationsk.play("kfall")
	
func _on_area_entered(area):
	if area is Coin:
		area.queue_free()
	else:
		Marioscorecount.remove_enemy(-10)
		Marioscorecount.updatescore()
		

