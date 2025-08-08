extends Sprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name != "player": 
		return
	call_deferred("reload_current_scene")



func reload_current_scene():
	GlobalScript.death_count = GlobalScript.death_count + 1
	GlobalScript.current_coin_count = 0
	
	get_tree().reload_current_scene()
