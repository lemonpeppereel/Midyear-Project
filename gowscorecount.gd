extends Node2D

class_name ScoreGow

var gowscore = 0


func remove_enemy(value):
	gowscore+=value
	if gowscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if gowscore >= 0:
		print(gowscore)
