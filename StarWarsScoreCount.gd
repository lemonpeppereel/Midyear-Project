extends Node2D

class_name ScoreStarWars

var Sscore = 0


func remove_enemy(value):
	Sscore+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if Sscore >= 0:
		print(Sscore)
