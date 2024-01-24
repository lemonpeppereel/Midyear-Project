extends Label
	
	
func _ready():
	text = "Score: " + str(MarioScore.score)

func updatescore():
	text = "Score: " + str(MarioScore.score)
	print(MarioScore.score)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
