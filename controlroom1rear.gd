extends Control

@onready var your_button = $RightArrow

func _ready():
	your_button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/room1.tscn")
