extends Control

func _on_exit_pressed():
	get_tree().change_scene_to_file("res://spalsh_screen.tscn")


func _on_exit_button_texture_pressed():
	get_tree().change_scene_to_file("res://spalsh_screen.tscn")


func _on_start_button_texture_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
