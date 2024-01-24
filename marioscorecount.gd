extends Label
	
	
func _ready():
	pass

func _updatescore():
	text = "Score: " + str(MarioScore.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
