extends Node2D

class_name ShootVenom

@export var venombullet_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var venombullet = venombullet_scene.instantiate()
		venombullet.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("venom_game").add_child(venombullet)
