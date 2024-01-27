extends Label

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		self.text = str(MarioGame.score)
		Node2D.score += 10
