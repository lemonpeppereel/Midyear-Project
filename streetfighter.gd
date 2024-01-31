extends Node2D

class_name StreetFighter

var rng = RandomNumberGenerator.new()
@export var zangief_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,12) == 1:
			var zangief = zangief_scene.instantiate()
			zangief.position.x = randi_range(0, 500)
			get_tree().root.get_node("streetfighter").add_child(zangief)
	

func _change_world():
	if Ryuscorecount.rscore >= 50:
		if random.randi_range(0,9) == 1:
			get_tree().change_scene_to_file("res://halo.tscn")
		elif random.randi_range(0,9) == 2:
			get_tree().change_scene_to_file("res://tmnt.tscn")
		elif random.randi_range(0,9) == 3:
			get_tree().change_scene_to_file("res://mk.tscn")
		elif random.randi_range(0,9) == 4:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,9) == 5:
			get_tree().change_scene_to_file("res://batman_game.tscn")
		elif random.randi_range(0,9) == 7:
			get_tree().change_scene_to_file("res://venom_game.tscn")
		elif random.randi_range(0,9) == 8:
			get_tree().change_scene_to_file("res://gow.tscn")
		Ryuscorecount.rscore = 0
func _on_button_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


