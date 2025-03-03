extends Area2D

@onready var system: Node = %System  # Pastikan ini mengarah ke node yang benar

func _on_body_entered(body: Node2D) -> void:
	if system.score >= 3:  # Cek apakah sudah mengumpulkan 3 buku
		get_tree().change_scene_to_file("res://sceen/Level/level1.tscn")  # Ganti dengan path level berikutnya
