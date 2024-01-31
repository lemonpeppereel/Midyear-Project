extends Node2D

class_name ScoreTmnt

var tmntscore = 0


func remove_enemy(value):
	tmntscore+=value
	if tmntscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if tmntscore >= 0:
		print(tmntscore)
