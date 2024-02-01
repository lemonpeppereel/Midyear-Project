extends Area2D

class_name Koopa
#@onready var animations4 = $kfall
@export var speed = 130

"""func koopafall():
	if Input.is_action_just_pressed("ui_up"):
		animations4.play("koopafall")"""
		
func _physics_process(delta):
	global_position.y += speed * delta
	#koopafall()
	
func _on_area_entered(area):
	if area is Coin:
		area.queue_free()
