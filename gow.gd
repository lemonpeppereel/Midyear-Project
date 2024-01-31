extends Node2D

class_name GOWGame

var rng = RandomNumberGenerator.new()
@export var minotaur_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()


func _process(delta):
	if Input.is_action_pressed("ui_down"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,14) == 1:
			var minotaur = minotaur_scene.instantiate()
			minotaur.position.x = randi_range(0, 1100)
			get_tree().root.get_node("GOW").add_child(minotaur)
	
func _change_world():
	random.randomize()
	if Gowscorecount.gowscore >=50:
		if random.randi_range(0,6) == 0:
			get_tree().change_scene_to_file("res://halo.tscn")
		elif random.randi_range(0,6) == 1:
			get_tree().change_scene_to_file("res://tmnt.tscn")
		elif random.randi_range(0,6) == 2:
			get_tree().change_scene_to_file("res://streetfighter.tscn")
		elif random.randi_range(0,6) == 3:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,6) == 4:
			get_tree().change_scene_to_file("res://batman_game.tscn")
		elif random.randi_range(0,6) == 5:
			get_tree().change_scene_to_file("res://mk.tscn")
		elif random.randi_range(0,6) == 6:
			get_tree().change_scene_to_file("res://venom_game.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	
func lose():
	if Gowscorecount.gowscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
