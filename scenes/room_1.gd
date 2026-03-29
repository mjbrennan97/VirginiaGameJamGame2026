extends Node2D

@onready var your_label = $FadeInLabel

func _ready():
	your_label.visible = GameState.label_visible
	_fade_in()
	MusicManager.play_music(preload("res://assets/songs/MenuTheme-Classicals.de.mp3"))

func _fade_in():
	if GameState.has_faded_in:
		return
	GameState.has_faded_in = true
	modulate = Color(0, 0, 0, 0)
	your_label.modulate = Color(1, 1, 1, 1)
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color(1, 1, 1, 1), 5.0)
	tween.tween_callback(_on_fade_complete)

func _on_fade_complete():
	GameState.label_visible = false
	your_label.visible = false
