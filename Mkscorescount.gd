extends Node

class_name ScoreMk

var mkscore = 0

func remove_enemy(value):
	mkscore+=value
	if mkscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")

func updatescore():
	if mkscore >= 0:
		print(mkscore)
