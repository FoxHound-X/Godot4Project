extends Node2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var music = preload("res://sceen/end/endmusic.mp3")
	GlobalMusic.play_music(music, "end1")
	
	$AnimationPlayer.play("faded in")
	await get_tree().create_timer(15).timeout
	$AnimationPlayer.play("faded out")
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://sceen/end/end2.tscn")
