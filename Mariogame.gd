extends Node2D

class_name MarioGame

var rng = RandomNumberGenerator.new()
@export var koopa_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

@onready var koopascene = preload("res://koopatroopa.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		change_worldselec()
		#_change_world()"""
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,9) == 1:
			var koopa = koopa_scene.instantiate()
			koopa.position.x = randi_range(0, 1100)
			get_tree().root.get_node("MarioGame").add_child(koopa)
			
func change_worldselec():
		if Marioscorecount.score >= 50:
			get_tree().change_scene_to_file("res://mariowin.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
 
