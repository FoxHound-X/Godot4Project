extends Control

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer
@onready var button: Button = $Button



func _on_button_pressed() -> void:
	Engine.time_scale = 0.99
	animation_player.play("paperon")
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://sceen/Materi/materilevel1/misi1.tscn")
