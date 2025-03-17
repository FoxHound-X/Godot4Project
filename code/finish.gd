extends Area2D

@onready var system: Node = %System  # Pastikan ini mengarah ke node yang benar

# Gunakan variable static agar nilainya tetap tersimpan antar scene
static var levels = [  
	"res://sceen/Level/level1.tscn",
	"res://sceen/Level/level_2.tscn",
	"res://sceen/Level/level_3.tscn",
	"res://sceen/Level/level_4.tscn",
	"res://sceen/Level/level_5.tscn",
]

static var current_level_index = 0  # Indeks level saat ini (juga static agar tidak ter-reset)

# Fungsi untuk pindah ke level berikutnya
func go_to_next_level():
	current_level_index += 1
	if current_level_index < levels.size():
		get_tree().change_scene_to_file(levels[current_level_index])

# Deteksi jika Player memasuki Area2D
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player" and system.score >= 3:
		go_to_next_level()
