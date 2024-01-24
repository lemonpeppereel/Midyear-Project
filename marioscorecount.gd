extends Label
	
	
func _ready():
		text = "Score: " + str((MarioScore.score)[0])


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
