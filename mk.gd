extends Node2D

var rng = RandomNumberGenerator.new()
@export var mk_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,13) == 1:
			var mk = mk_scene.instantiate()
			mk.position.x = randi_range(0, 1100)
			get_tree().root.get_node("MK").add_child(mk)
			
func _change_world():
	random.randomize()
	if Mkscorescount.mkscore >= 50:
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
			get_tree().change_scene_to_file("res://venom_game.tscn")
		elif random.randi_range(0,6) == 6:
			get_tree().change_scene_to_file("res://gow.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_file("res://worldselect.tscn")
