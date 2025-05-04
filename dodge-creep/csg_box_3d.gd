extends CSGBox3D

var rotation_amount := 0.01

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	rotate(Vector3(1.0, 1.0, 0.0).normalized(), rotation_amount)
	pass
