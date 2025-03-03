extends Node

var score = 0
@onready var poin = $poin

func add_point():
	score += 1
	poin.text = "Book: " + str(score) + " / 3"
