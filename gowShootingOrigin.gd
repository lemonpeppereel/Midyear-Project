extends Node2D

class_name GOWShoot

@export var blade_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var blade = blade_scene.instantiate()
		blade.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("GOW").add_child(blade)
	
		
		
