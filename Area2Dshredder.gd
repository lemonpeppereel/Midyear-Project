extends Area2D

class_name ShredderCatcher

func _on_area_entered(area):
	if area is Shredder:
		area.queue_free()
