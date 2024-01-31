extends Node2D

class_name ScoreGoku

var gscore = 0


func remove_enemy(value):
	gscore+=value
	if gscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if gscore >= 0:
		print(gscore)
