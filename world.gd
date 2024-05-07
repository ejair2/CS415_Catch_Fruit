extends Node2D

@onready var sfx_gameover = $sfx_gameover

func _process(delta):
	
	if Global.health <= 0:
		#queue_free()
		sfx_gameover.play()
		get_tree().change_scene_to_file("res://gameover.tscn")
