extends RigidBody2D


func _ready():
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.play()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
