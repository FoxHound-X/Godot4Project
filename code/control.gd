extends Node2D

func _ready():
	show()
	Engine.time_scale = 0  # Tampilkan popup saat game mulai
	$Panel/Button.pressed.connect(_on_Button_pressed)  # Perbaiki cara menghubungkan sinyal

func _on_Button_pressed():
	Engine.time_scale = 1
	hide()  # Sembunyikan popup setelah tombol ditekan
