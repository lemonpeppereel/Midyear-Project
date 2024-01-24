extends Area2D

@export var speed = 400
@onready var animations = $Coinani
	
var score := 0:
	set(value):
		score = value
		Marioscorecount.value = score
		
func _physics_process(delta):
	global_position.y += -speed * delta
	#coinshot()
	
#func coinshot():
	#if Input.is_action_just_pressed("ui_up"):
		#animations.play("coinanimation")
		
func _on_area_entered(area):
	area.queue_free()
	score += 10;
	Marioscorecount.updatescore()
