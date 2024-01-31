extends Node2D

func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	
var rng = RandomNumberGenerator.new()
@export var fighter_scene: PackedScene
var screensize = Vector2(1152,600)
var random = RandomNumberGenerator.new()

@onready var jetscene = preload("res://fighter_jet.tscn")
@onready var forcegame = preload("res://ForcePush.gd")

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,15) == 5:
			var jet = fighter_scene.instantiate()
			jet.position.x = randi_range(0, 600)
			get_tree().root.get_node("StarWars").add_child(jet)
	
func _change_world():
	random.randomize()
	if random.randi_range(0,8) == 0:
		get_tree().change_scene_to_file("res://goku_game.tscn")
	elif random.randi_range(0,8) == 1:
		get_tree().change_scene_to_file("res://halo.tscn")
	elif random.randi_range(0,8) == 2:
		get_tree().change_scene_to_file("res://tmnt.tscn")
	elif random.randi_range(0,8) == 3:
		get_tree().change_scene_to_file("res://streetfighter.tscn")
	elif random.randi_range(0,8) == 4:
		get_tree().change_scene_to_file("res://MarioGame.tscn")
	elif random.randi_range(0,8) == 5:
		get_tree().change_scene_to_file("res://spiderman.tscn")
	elif random.randi_range(0,8) == 6:
		get_tree().change_scene_to_file("res://samurai.tscn")
	elif random.randi_range(0,8) == 7:
		get_tree().change_scene_to_file("res://batman_game.tscn")
				
			

