extends Area2D

func _ready():
	input_pickable = true
	input_event.connect(_on_input_event)

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if InventoryManager.has_item("Key"):
				get_tree().change_scene_to_file("res://keypuzzle.tscn")
			else:
				print("you need the item to pass")
