extends Node2D

@export var hbullet_scene: PackedScene


func _input(_event):
	if Input.is_action_just_pressed("ui_right"):
		var hbullet = hbullet_scene.instantiate()
		hbullet.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("halo").add_child(hbullet)
		
		
