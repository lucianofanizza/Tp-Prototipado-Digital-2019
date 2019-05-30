extends KinematicBody2D
var pos

func _ready():
	pos = global_position

func _process(delta):
	global_position = (Vector2(20, 0))