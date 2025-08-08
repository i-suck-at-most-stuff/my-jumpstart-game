extends Sprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player": 
		GlobalScript.checkpoint_pos = $Marker2D.global_position
		GlobalScript.saved_coin_count = GlobalScript.saved_coin_count + GlobalScript.current_coin_count
