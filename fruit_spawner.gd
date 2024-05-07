extends Node2D

var spawner_position = null
var apple = preload("res://apple.tscn")
var banana = preload("res://banana.tscn")
var grape = preload("res://grape.tscn")
var melon = preload("res://melon.tscn")
var orange = preload("res://orange.tscn")
var strawberry = preload("res://strawberry.tscn")
var spikyball = preload("res://spikyball.tscn")

func _ready():
	randomize()
	spawner_position = $Spawner.get_children()


func spawn_apple():
	var index = randi() % spawner_position.size()
	var fruits = [apple, banana, grape, melon, orange, strawberry, spikyball]
	var randomFruit = fruits[randi() % fruits.size()]
	var fruit = randomFruit.instantiate()
	fruit.global_position = spawner_position[index].global_position
	add_child(fruit)

func random_fruit():
	var fruits = [apple, banana, grape, melon, orange, strawberry]
	var name = fruits[randi() % fruits.size()]
	$Sprite.texture = (name)

func _on_timer_timeout():
	$Timer.set_wait_time($Timer.get_wait_time() - 0.02)
	spawn_apple()
