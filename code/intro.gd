extends Node2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("faded in")
	await get_tree().create_timer(6).timeout
	$AnimationPlayer.play("faded out")
	await get_tree().create_timer(4).timeout
	get_tree().change_scene_to_file("res://sceen/mainmenu.tscn")
