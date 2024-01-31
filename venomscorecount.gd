extends Node

class_name ScoreVenom

var Vscore = 0

func remove_enemy(value):
	Vscore+=value

func updatescore():
	if Vscore >= 0:
		print(Vscore)
