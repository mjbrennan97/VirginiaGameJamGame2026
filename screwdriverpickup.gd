extends Area2D

@export var item: InventoryItemData
@onready var jiggle_sound = $screwplayer

func _ready():
	input_pickable = true

func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			InventoryManager.add_item(item)
			jiggle_sound.play()
			queue_free()
