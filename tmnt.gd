extends Node2D

class_name tmnt

var rng = RandomNumberGenerator.new()
@export var shredder_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,14) == 1:
			var shredder = shredder_scene.instantiate()
			shredder.position.y = randi_range(0,600)
			get_tree().root.get_node("tmnt").add_child(shredder)
	
func _change_world():
	random.randomize()
	if Tmntscorecount.tmntscore >= 50:
		if random.randi_range(0,6) == 0:
			get_tree().change_scene_to_file("res://halo.tscn")
		elif random.randi_range(0,6) == 1:
			get_tree().change_scene_to_file("res://mk.tscn")
		elif random.randi_range(0,6) == 2:
			get_tree().change_scene_to_file("res://streetfighter.tscn")
		elif random.randi_range(0,6) == 3:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,6) == 4:
			get_tree().change_scene_to_file("res://batman_game.tscn")
		elif random.randi_range(0,6) == 5:
			get_tree().change_scene_to_file("res://venom_game.tscn")
		elif random.randi_range(0,6) == 6:
			get_tree().change_scene_to_file("res://gow.tscn")
		

func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")

func lose():
	if Tmntscorecount.tmntscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
