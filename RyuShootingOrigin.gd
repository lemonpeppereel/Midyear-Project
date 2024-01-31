extends Node2D

class_name RyuShoot

@export var bullet_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var hadouken = bullet_scene.instantiate()
		hadouken.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("streetfighter").add_child(hadouken)
	
		
		
