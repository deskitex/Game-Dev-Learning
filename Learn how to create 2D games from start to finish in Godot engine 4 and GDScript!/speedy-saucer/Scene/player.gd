extends RigidBody2D

var force = 500

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force, 0))
	elif Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force, 0))
	elif Input.is_action_pressed("move_up"):
		apply_force(Vector2(0, -force))
	elif Input.is_action_pressed("move_down"):
		apply_force(Vector2(0, force))



func _on_maze_body_exited(body: Node2D) -> void:
	print("exited")
