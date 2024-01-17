extends Node2D

@export var coin_scene: PackedScene

func _input(event):
	if Input.is_action_just_pressed("ui_up")==true:
		var coin = coin_scene.instantiate()
		coin.global_position = get_parent().global_position
		get_tree().root.get_node("Game").add_child(coin)
		
