extends Area2D

class_name KoopaCatcher

func _on_area_entered(area):
	if area is Koopatroopa:
		area.queue_free()
