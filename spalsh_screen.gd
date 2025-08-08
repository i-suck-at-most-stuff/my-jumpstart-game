extends Control

@onready var audio = $AudioStreamPlayer2D
@onready var timer = $Timer

func _ready():
	audio.play()
	timer.start() 

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://main_menu.tscn")  
