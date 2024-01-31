extends CharacterBody2D

class_name Venom

@export var yes  = 1 

const max_speed = 520
const accel = 1000
const friction = 2000
var input = Vector2.ZERO

func _physics_process(delta):
	player_movement(delta)


func get_input():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if int(Input.is_action_pressed("ui_right")) == 1:
		return input.normalized()
		
	elif int(Input.is_action_pressed("ui_left")) == 1:
		return input.normalized()
		
	else:
		return input.normalized()

	
func player_movement(delta):
	input = get_input()
	
	if input == Vector2.ZERO:
		if velocity.length()>(friction*delta):
			velocity -= velocity.normalized() * (friction * delta)
		else:
			velocity = Vector2.ZERO
	else: 
		velocity += (input * accel * delta)
		velocity = velocity.limit_length(max_speed)
	move_and_slide()	
	
	global_position = global_position.clamp(Vector2(-450,-999), Vector2(700,750))
	
