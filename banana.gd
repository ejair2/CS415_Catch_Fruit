extends CharacterBody2D

var speed = 200 + Global.speed
@onready var sfx_hit = $"../../sfx_hit"
@onready var sfx_collect = $"../../sfx_collect"

func _physics_process(delta):
	var collideObject = move_and_collide(Vector2(0, speed * delta))
	if(collideObject):
		#print(collideObject.get_collider().name)
		if(collideObject.get_collider().name == "Player"):
			sfx_collect.play()
			Global.score += 3
			collideObject
			queue_free()
		elif(collideObject.get_collider().name == "StaticBody2D2"):
			sfx_hit.play()
			Global.health -= 1
			queue_free()
