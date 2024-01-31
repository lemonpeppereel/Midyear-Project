extends Node2D

var bscore = 0

func remove_enemy(value):
	bscore+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if bscore >= 0:
		print(bscore)
