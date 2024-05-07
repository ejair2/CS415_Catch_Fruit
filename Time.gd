extends Label

func _process(delta):
	Global.time += delta
	self.text = str(Global.time).pad_decimals(2)
