extends Node2D

class_name ScoreGow

var gowscore = 0


func remove_enemy(value):
	gowscore+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if gowscore >= 0:
		print(gowscore)
