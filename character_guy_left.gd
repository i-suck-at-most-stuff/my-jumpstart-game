extends Sprite2D

@export var spin_speed: float = 180.0 

func _process(delta: float) -> void:
	rotation_degrees += spin_speed * delta
