extends Label

func _process(delta):
	self.text = str("HP: ") + str(Global.health)
