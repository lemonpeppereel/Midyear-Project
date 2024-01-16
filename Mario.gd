extends CharacterBody2D

@export var yes  = 1 
@onready var animations = $AnimationPlayer

const max_speed = 400
const accel = 1000
const friction = 100
var input = Vector2.ZERO

var coin_scene = preload("res://coin.tscn")

signal coin_shot(coin_scene, location)

@onready var Marker2d = $Marker2D

func _physics_process(delta):
	player_movement(delta)
	player_shoot()
func player_shoot():
	if Input.is_action_just_pressed("ui_up") == true:
		animations.play("shoot")

func get_input():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
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
	
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()
		
func shoot():
	coin_shot.emit(coin_scene, Marker2d.global_position)
	

