extends Control
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var timer: Timer = $Timer


func _on_start_pressed() -> void:
	Engine.time_scale = 0.98
	animation_player.play("clicksfx")
	timer.start()

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://sceen/Level/level1.tscn")
	Engine.time_scale = 1


func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://sceen/system_game.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
