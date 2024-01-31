extends Node2D

@export var darksaber_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_left"):
		var darksaber = darksaber_scene.instantiate()
		darksaber.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("mando").add_child(darksaber)
