extends Node2D


@export var batwing_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var batwing = batwing_scene.instantiate()
		batwing.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("batman_game").add_child(batwing)
	
		
		
