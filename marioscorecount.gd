extends Label

class_name ScoreMario

var score = 0

func _ready():
	self.text = "Score: " + str(score)

func add_score(add:int):
	score+=add
	if score<0:
		get_tree().change_scene_to_file("res://menu.tscn")
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func updatescore():
	self.text = "Score: " + str(score)
	if score>= 0:
		print(score)
