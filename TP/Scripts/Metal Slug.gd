extends KinematicBody2D
var velocity = Vector2()
var vector_normal = Vector2(0,-1)


func get_input():
    if Input.is_action_pressed("ui_right"):
        velocity.x += 10
        print (velocity.x)
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 10
        print (velocity.x)
    if Input.is_action_just_released("ui_right"):
        velocity.x = 0
    if Input.is_action_just_released("ui_left"):
        velocity.x = 0
    velocity.x = clamp(velocity.x, -230, 230)

func _physics_process(delta):
	get_input()
	velocity.y += 30
	if is_on_floor():
		velocity.y = 1
	if Input.is_action_just_pressed("ui_jump") and is_on_floor():
		velocity.y = -750
	move_and_slide(velocity, vector_normal)


func _on_pasar_a_Demon_Front_body_entered(body):
	if (body.name == "Metal Slug"):
		get_tree().change_scene("res://Escenas/Nivel Demont Front.tscn")
	pass # Replace with function body.
