extends Sprite2D

@onready var second_sprite = $"Sprite2D"  # adjust path

func _ready():
	input_pickable = true
	second_sprite.visible = false
	second_sprite.input_pickable = true

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if second_sprite.visible:
				second_sprite.visible = false
				visible = true

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			visible = false
			second_sprite.visible = true
			get_viewport().set_input_as_handled()
