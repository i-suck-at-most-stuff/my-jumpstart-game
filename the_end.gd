extends Control

@onready var timer_label = $TimerLabel
@onready var death_label = $DeathLabel
@onready var coins_label = $CoinsLabel

func _process(delta: float) -> void:
	timer_label.text = str(round(GlobalScript.total_total_time_take)) + "s"
	death_label.text = str(GlobalScript.total_total_number_death)
	coins_label.text = str(GlobalScript.total_total_coins_got) 


func _on_replay_pressed():
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
	get_tree().change_scene_to_file("res://main.tscn") 


func _on_replay_button_texture_pressed():
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
	get_tree().change_scene_to_file("res://main.tscn") 
	
