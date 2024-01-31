extends Node2D

class_name GokuGame

var rng = RandomNumberGenerator.new()
@export var vegeta_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,17) == 1:
			var vegeta = vegeta_scene.instantiate()
			vegeta.position.y = randi_range(0, 600)
			get_tree().root.get_node("goku_game").add_child(vegeta)
	
func _change_world():
	random.randomize()
	if Marioscorecount.score >= 0:
		if random.randi_range(0,15) == 0:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,15) == 1:
			get_tree().change_scene_to_file("res://halo.tscn")
		elif random.randi_range(0,15) == 2:
			get_tree().change_scene_to_file("res://tmnt.tscn")
		elif random.randi_range(0,15) == 3:
			get_tree().change_scene_to_file("res://streetfighter.tscn")
		elif random.randi_range(0,15) == 4:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,15) == 5:
			get_tree().change_scene_to_file("res://spiderman.tscn")
		elif random.randi_range(0,15) == 6:
			get_tree().change_scene_to_file("res://samurai.tscn")
		elif random.randi_range(0,15) == 7:
			get_tree().change_scene_to_file("res://batman_game.tscn")
		elif random.randi_range(0,15) == 8:
			get_tree().change_scene_to_file("res://mk.tscn")
		elif random.randi_range(0,15) == 9:
			get_tree().change_scene_to_file("res://mando.tscn")
		elif random.randi_range(0,15) == 10:
			get_tree().change_scene_to_file("res://venom_game.tscn")
		elif random.randi_range(0,15) == 11:
			get_tree().change_scene_to_file("res://witcher_3.tscn")
		elif random.randi_range(0,15) == 12:
			get_tree().change_scene_to_file("res://wolverine_game.tscn")
		elif random.randi_range(0,15) == 13:
			get_tree().change_scene_to_file("res://gow.tscn")
		elif random.randi_range(0,15) == 14:
			get_tree().change_scene_to_file("res://elden_ring.tscn")
		

func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
