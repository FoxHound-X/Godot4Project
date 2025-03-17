extends Node

var music_player: AudioStreamPlayer = null
var current_scene_name: String = ""

func _ready():
	if not music_player:
		music_player = AudioStreamPlayer.new()
		music_player.stream_paused = false  # Agar musik bisa terus dimainkan
		add_child(music_player)

func play_music(music_stream: AudioStream, scene_name: String):
	# Jika musik yang ingin diputar sudah aktif, jangan restart
	if current_scene_name == scene_name and music_player.playing:
		return

	# Update nama scene yang sedang dimainkan
	current_scene_name = scene_name

	# Jika musik yang sama sudah diputar, jangan restart, biarkan tetap berjalan
	if music_player.stream == music_stream and music_player.playing:
		return

	# Ganti musik dan mulai mainkan
	music_player.stream = music_stream
	music_player.play()
