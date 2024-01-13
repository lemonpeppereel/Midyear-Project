extends Node2D

@onready var coin_container = $CoinContainer

func _ready():
	CharacterBody2D.coin_shot.connect(_on_player_coin_shot)
	
func _on_player_coin_shot(coin_scene, location):
	var coin = coin_scene.instantiate()
	coin.global_position = location
	coin_container.add_child(coin)
	




