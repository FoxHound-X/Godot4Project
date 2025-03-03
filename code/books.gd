extends Area2D

@onready var system: Node2D = %System
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	system.add_point()
	animation_player.play("pickup")
