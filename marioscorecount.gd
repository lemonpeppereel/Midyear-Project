extends Label

var value = 0

func _process(delta):
	self.text = "Score: " + str(value)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	self.text = "Score: " + str(value)
	print(value)
