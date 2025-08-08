extends Sprite2D
@export var Left: Texture2D
@export var Right: Texture2D

func _physics_process(delta):
	var direction = Input.get_axis("left", "right")

	if direction < 0:
		texture = Left
	elif direction > 0:
		texture = Right
