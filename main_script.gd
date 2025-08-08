extends Node

@onready var audio = $player/AudioStreamPlayer2D

func _ready():
	audio.play()


func _process(delta: float) -> void:
	if GlobalTimer.level_complete:
		return
	GlobalTimer.level_time += delta

func _on_goal_body_entered(body):
	if body.name == "player" and not GlobalTimer.level_complete:
		GlobalTimer.level_complete = true
		GlobalScript.time_taken = GlobalTimer.level_time
		get_tree().change_scene_to_file("res://level-transition.tscn")
		
		
		

func _on_audio_stream_player_2d_finished():
	audio.play()
