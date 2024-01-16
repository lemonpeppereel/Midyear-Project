extends Node2D

@onready var coin_container = $CoinContainer
var mario = get_tree().get_first_node_in_group("Mario")

func _ready():
	# mario = get_tree().get_first_node_in_group("Mario")
	# print(mario)
	# assert(mario!=null)
	# mario.global_position = 
	print(get_tree())
	mario.coin_shot.connect(_on_player_coin_shot)
	
func _on_player_coin_shot(coin_scene, location):
	var coin = coin_scene.instantiate()
	coin.global_position = location
	coin_container.add_child(coin)
	




