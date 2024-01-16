extends Node2D

@onready var coin_container = $CoinContainer
#var mario = null

func _ready():
	var mario = get_tree().get_first_node_in_group("mario")
	print("hi",mario)
	#assert(mario!=null) 
	#print(get_tree())
	mario.coin_shot.connect(_on_mario_coin_shot)
	
func _on_mario_coin_shot(coin_scene, location):
	var coin = coin_scene.instantiate()
	coin.global_position = location
	coin_container.add_child(coin)
