extends Node2D

class_name ScoreStarWars

var Sscore = 0


func remove_enemy(value):
	Sscore+=value
	if Sscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if Sscore >= 0:
		print(Sscore)
