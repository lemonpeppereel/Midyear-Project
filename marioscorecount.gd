extends Label

var value = 0
	
func _addscore():
	value += MarioScore.score
	
func _ready():
	if value>=0:
		text = "Score: " + str(value)
		_addscore()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
