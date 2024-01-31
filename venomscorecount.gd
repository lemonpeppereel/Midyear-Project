extends Node

class_name ScoreVenom

var Vscore = 0

func remove_enemy(value):
	Vscore+=value
	if Vscore<0:
		get_tree().change_scene_to_file("res://menu.tscn")

func updatescore():
	if Vscore >= 0:
		print(Vscore)
