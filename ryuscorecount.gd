extends Label

class_name ScoreRyu

var rscore = 0

func remove_enemy(value):
	rscore+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	if rscore >= 0:
		print(rscore)
