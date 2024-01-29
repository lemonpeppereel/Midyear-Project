extends Node2D

class_name MarioShoot

@export var coin_scene: PackedScene

func _input(_event):
	if Input.is_action_just_pressed("ui_up"):
		var coin = coin_scene.instantiate()
		coin.global_position = get_parent().global_position - Vector2(0, 20)
		get_tree().root.get_node("MarioGame").add_child(coin)
	
		
		
