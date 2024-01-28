extends Area2D

class_name CoinCatcher

func _on_area_entered(area):
	if area is Coin:
		area.queue_free()
