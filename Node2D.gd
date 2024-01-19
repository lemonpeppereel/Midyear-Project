extends Node2D


var rng = RandomNumberGenerator.new()
@export var koopa_scene: PackedScene
var screensize = Vector2(3200,1800)


func _input(_event):
		rng.randomize()
		if rng.randi_range(0,15) == 5:
			var koopa = koopa_scene.instantiate()
			koopa.position.x = randi_range(0, screensize.x)
			get_tree().root.get_node("MarioGame").add_child(koopa)
		
		

