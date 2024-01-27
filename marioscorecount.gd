extends Label

var score = 0

func _ready():
	text = "Score: " + str(score)

func remove_enemy(value):
	score+=value
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	text = "Score: " + str(score)
	print(score)
