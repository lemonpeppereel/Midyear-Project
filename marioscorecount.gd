extends Label

var value = 0

func _ready():
	text = "Score: " + str(value)

# Called every frame. 'delta' is the elapsed time since the previous frame.
# func updatescore():
	# var myLabel = $mariolabel
	# var myLabel = $Label
	# myLabel.text=str("asdfasdf")
	# text = "Score: " + str(value+10)
