extends Node2D


var rng = RandomNumberGenerator.new()
@export var henemy_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

func _process(delta):
	if Input.is_action_pressed("ui_left"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,12) == 1:
			var henemy = henemy_scene.instantiate()
			henemy.position.y = randi_range(0,600)
			get_tree().root.get_node("halo").add_child(henemy)
	
func _change_world():
	random.randomize()
	if Haloscorecount.hscore >= 50:
		if random.randi_range(0,6) == 0:
			get_tree().change_scene_to_file("res://tmnt.tscn")
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
	get_tree().change_scene_to_file("res://worldselect.tscn")
