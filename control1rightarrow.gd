extends Control

@onready var your_button = $RightArrow

func _ready():
	your_button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	GameState.label_visible = false
	get_tree().change_scene_to_file("res://room2left.tscn")
