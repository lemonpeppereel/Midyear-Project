extends Node2D

class_name MKShoot

@export var mk_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var mk = mk_scene.instantiate()
		mk.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("MK").add_child(mk)
