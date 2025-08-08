extends Sprite2D

@export var normal_texture: Texture2D
@export var collected_texture: Texture2D
@onready var audio = $AudioStreamPlayer2D

var collected: bool = false

func _on_area_2d_body_entered(body: Node2D) -> void:
	if collected or body.name != "player":
		return

	collected = true
	audio.play()
	texture = collected_texture
	GlobalScript.current_coin_count = GlobalScript.current_coin_count + 1
	print(GlobalScript.current_coin_count)
	print("All Time:", GlobalScript.saved_coin_count)
func _ready() -> void:
	
	collected = false
	texture = normal_texture
