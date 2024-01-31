extends Area2D

class_name PizzaCatcher

func _on_area_entered(area):
	if area is pizza:
		area.queue_free()
