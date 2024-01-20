extends Node2D

@export var force_scene: PackedScene


func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var force = force_scene.instantiate()
		force.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("StarWars").add_child(force)
		
		
