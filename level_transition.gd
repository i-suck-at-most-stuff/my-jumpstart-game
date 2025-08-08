extends Control

@onready var timer_label = $TimerLabel
@onready var death_label = $DeathLabel
@onready var coins_label = $CoinsLabel

func _process(delta: float) -> void:
	timer_label.text = str(round(GlobalScript.time_taken)) + "s"
	death_label.text = str(GlobalScript.death_count)
	coins_label.text = str(GlobalScript.saved_coin_count) 


func _on_next_button_texture_pressed():
	GlobalScript.total_total_number_death = GlobalScript.total_total_number_death + GlobalScript.death_count
	GlobalScript.total_total_time_take = GlobalScript.total_total_time_take + GlobalTimer.level_time
	GlobalScript.total_total_coins_got = GlobalScript.total_total_coins_got + GlobalScript.saved_coin_count
	
	GlobalTimer.level_time = 0.0
	GlobalTimer.level_complete = false
	GlobalScript.death_count = 0
	GlobalScript.current_coin_count = 0
	GlobalScript.saved_coin_count = 0
	GlobalScript.checkpoint_pos = Vector2(-999, -999)
	GlobalScript.previous_checkpoint_node = null
	if GlobalScript.level_num == 0:
		get_tree().change_scene_to_file("res://main-two.tscn")
		GlobalScript.level_num = 1
	elif  GlobalScript.level_num == 1:
		get_tree().change_scene_to_file("res://main-three.tscn")
		GlobalScript.level_num = 2
	elif  GlobalScript.level_num == 2:
		get_tree().change_scene_to_file("res://main-four.tscn")
		GlobalScript.level_num = 3
	else:
		GlobalScript.level_num = 0
		get_tree().change_scene_to_file("res://the-end.tscn")


func _on_next_pressed():
	GlobalScript.total_total_number_death = GlobalScript.total_total_number_death + GlobalScript.death_count
	GlobalScript.total_total_time_take = GlobalScript.total_total_time_take + GlobalTimer.level_time
	GlobalScript.total_total_coins_got = GlobalScript.total_total_coins_got + GlobalScript.saved_coin_count
	GlobalTimer.level_time = 0.0
	GlobalTimer.level_complete = false
	GlobalScript.death_count = 0
	GlobalScript.current_coin_count = 0
	GlobalScript.saved_coin_count = 0
	GlobalScript.checkpoint_pos = Vector2(-999, -999)
	GlobalScript.previous_checkpoint_node = null
	if GlobalScript.level_num == 0:
		get_tree().change_scene_to_file("res://main-two.tscn")
		GlobalScript.level_num = 1
	elif  GlobalScript.level_num == 1:
		get_tree().change_scene_to_file("res://main-three.tscn")
		GlobalScript.level_num = 2
	elif  GlobalScript.level_num == 2:
		get_tree().change_scene_to_file("res://main-four.tscn")
		GlobalScript.level_num = 3
	else:
		GlobalScript.level_num = 0
		get_tree().change_scene_to_file("res://the-end.tscn")


func _on_exit_pressed():
	GlobalTimer.level_time = 0.0
	GlobalTimer.level_complete = false
	GlobalScript.death_count = 0
	GlobalScript.current_coin_count = 0
	GlobalScript.saved_coin_count = 0
	GlobalScript.checkpoint_pos = Vector2(-999, -999)
	GlobalScript.previous_checkpoint_node = null
	GlobalScript.total_total_number_death = 0
	GlobalScript.total_total_coins_got = 0
	GlobalScript.total_total_time_take = 0
	get_tree().change_scene_to_file("res://main_menu.tscn") 


func _on_exit_button_texture_pressed():
	GlobalTimer.level_time = 0.0
	GlobalTimer.level_complete = false
	GlobalScript.death_count = 0
	GlobalScript.current_coin_count = 0
	GlobalScript.saved_coin_count = 0
	GlobalScript.checkpoint_pos = Vector2(-999, -999)
	GlobalScript.previous_checkpoint_node = null
	GlobalScript.total_total_number_death = 0
	GlobalScript.total_total_coins_got = 0
	GlobalScript.total_total_time_take = 0
	get_tree().change_scene_to_file("res://main_menu.tscn") 
