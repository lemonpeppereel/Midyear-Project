extends Node2D

var score = 0

var rng = RandomNumberGenerator.new()
@export var koopa_scene: PackedScene
var screensize = Vector2(1152,640)
var random = RandomNumberGenerator.new()

@onready var koopascene = preload("res://koopatroopa.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_down"):
		_change_world()
		
func _input(_event):
		rng.randomize()
		if rng.randi_range(0,18) == 5:
			var koopa = koopa_scene.instantiate()
			koopa.position.x = randi_range(-1000, 600)
			get_tree().root.get_node("MarioGame").add_child(koopa)
	
func _change_world():
	random.randomize()
	if Marioscorecount.score == 100:
		if random.randi_range(0,7) == 0:
			get_tree().change_scene_to_file("res://goku_game.tscn")
		elif random.randi_range(0,7) == 1:
			get_tree().change_scene_to_file("res://halo.tscn")
		elif random.randi_range(0,7) == 2:
			get_tree().change_scene_to_file("res://tmnt.tscn")
		elif random.randi_range(0,7) == 3:
			get_tree().change_scene_to_file("res://streetfighter.tscn")
		elif random.randi_range(0,7) == 4:
			get_tree().change_scene_to_file("res://StarWars.tscn")
		elif random.randi_range(0,7) == 5:
			get_tree().change_scene_to_file("res://spiderman.tscn")
		elif random.randi_range(0,7) == 6:
			get_tree().change_scene_to_file("res://samurai.tscn")

