extends Node2D

class_name GShootingOrigin

@export var gokubullet_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_right"):
		var goku = gokubullet_scene.instantiate()
		goku.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("goku_game").add_child(goku)
	
		
		
