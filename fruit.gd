extends CharacterBody2D

var speed = 200

func _physics_process(delta):
	var collideObject = move_and_collide(Vector2(0, speed * delta))
	if(collideObject):
		Global.score += 1
		collideObject
		queue_free()
