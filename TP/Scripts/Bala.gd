extends KinematicBody2D

var horizontal = 0
var vertical = 0
var speed = 1500

func iniciar(h, v):
	horizontal = h
	vertical = v

func _physics_process(delta):
	var move = move_and_slide(Vector2(horizontal * speed, vertical * speed))
	pass