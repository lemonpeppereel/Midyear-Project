extends Node2D


var hscore = 0


func remove_enemy(value):
	hscore+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if hscore >= 0:
		print(hscore)
