extends KinematicBody2D

var dir = 0
var speed = 500

func _process(delta):
	var move = move_and_collide(Vector2(0,dir*speed*delta))
	pass