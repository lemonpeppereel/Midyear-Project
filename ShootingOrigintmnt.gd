extends Node2D

@export var pizza_scene: PackedScene


func _input(_event):
	if Input.is_action_just_pressed("ui_right"):
		var pizza = pizza_scene.instantiate()
		pizza.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("tmnt").add_child(pizza)
		
		
