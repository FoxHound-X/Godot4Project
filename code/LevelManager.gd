extends Node  # BUKAN Area2D, agar bisa diletakkan di Autoload

var levels = [  # Daftar level secara urut
	"res://sceen/Level/level1.tscn",
	"res://sceen/Level/level_2.tscn",
	"res://sceen/Level/level_3.tscn",
]

var current_level_index = 0  # Indeks level saat ini

# Fungsi untuk pindah ke level berikutnya
func go_to_next_level():
	current_level_index += 1
	if current_level_index < levels.size():
		get_tree().change_scene_to_file(levels[current_level_index])
